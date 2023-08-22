import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thesolarshop/pages/cartscreen.dart';
import 'package:thesolarshop/pages/contact.dart';
import 'package:thesolarshop/pages/loginscreen.dart';
import 'package:thesolarshop/pages/registerscreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thesolarshop/pages/product.dart';
import 'package:thesolarshop/pages/cart.dart';

class Solarkit extends StatelessWidget {
  Solarkit({Key? key}) : super(key: key);

  final List<String> images = [
    'images/Kodak 3kW Back-up Kit.jpg',
    'images/Kodak 5kW Back-up Kit.jpg',
    'images/Kodak 5kW Back-up Kit UP5000.jpg',
    'images/SunSynk 5kW 48V Self Consumption Kit.jpg',
    'images/SunSynk 5kW Back-up Kit.jpg',
    'images/SunSynk 8kW Back-up Kit.jpg',
    'images/Victron Multiplus 48-5000-70-50 Backup Kit.jpg',
    'images/Victron Multiplus 48-5000-70-100 Self Consumption Kit.jpg',
    'images/Victron Quattro 48-8000-110-100 Self Consumption Kit.jpg',
    'images/Victron Quattro 48-10000-140-100-100 Backup Kit.jpg',
  ];

  final List<String> headings = [
    'Kodak 3kW Back-up Kit',
    'Kodak 5kW Back-up Kit',
    'Kodak 5kW Back-up Kit UP5000',
    'SunSynk 5kW 48V Self Consumption Kit',
    'SunSynk 5kW Back-up Kit',
    'SunSynk 8kW Back-up Kit',
    'Victron Multiplus 48-5000-70-50 Backup Kit',
    'Victron Multiplus 48-5000-70-100 Self Consumption Kit',
    'Victron Quattro 48-8000-110-100 Self Consumption Kit',
    'Victron Quattro 48-10000-140-100-100 Backup Kit',
  ];

  final List<String> prices = [
    'R35,037.05',
    'R59,667.00',
    'R59,954.30 ',
    'R126,069.36',
    'R92,609.37',
    'R136,053.03',
    'R215,414.47 ',
    'R139,854.06',
    'R189,035.07',
    'R242,655.68',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Inverters",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          // Add your action buttons here
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Loginscreen()),
              );
            },
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              "Login",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterScreen()),
              );
            },
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              "Register",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Contact()),
              );
            },
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              "Contact",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const CartScreen()), // Replace CartScreen() with your actual cart screen widget
              );
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(100.0, 100.0, 100.0, 100.0),
          child: Column(
            children: [
              for (int i = 0; i < 3; i++)
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (int j = 0; j < 4; j++)
                          if (i * 4 + j < 10)
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => About(
                                      image: images[i * 4 + j],
                                      name: headings[i * 4 + j],
                                      price: prices[i * 4 + j],
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                width: 280,
                                height: 400,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black, width: 1.0),
                                ),
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(images[i * 4 + j]),
                                        Text(
                                          headings[i * 4 + j],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () async {
                                            var user = FirebaseAuth
                                                .instance.currentUser;
                                            if (user == null) {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Loginscreen()),
                                              );
                                            } else {
                                              // Add product to user's cart in Firestore
                                              await FirebaseFirestore.instance
                                                  .collection('users')
                                                  .doc(user.email)
                                                  .collection('cart')
                                                  .doc(headings[i * 4 + j])
                                                  .set({
                                                'productName':
                                                    headings[i * 4 + j],
                                                'productPrice':
                                                    prices[i * 4 + j],
                                              });

                                              // Updating the cart using Provider
                                              var cart = Provider.of<Cart>(
                                                  context,
                                                  listen: false);
                                              cart.add(Product(
                                                name: headings[i * 4 + j],
                                                price: prices[i * 4 + j],
                                                description: '',
                                                imageUrl: '',
                                                stock: '',
                                                // Add any other fields that your Product class may require
                                              ));

                                              // Show the pop-up message
                                              showOverlay(context,
                                                  "${headings[i * 4 + j]} has been added to the basket.");
                                            }
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: const Text("Add to Basket"),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 10),
                                        color: Colors.blue.shade900,
                                        child: Text(
                                          prices[i * 4 + j],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      ],
                    ),
                    const SizedBox(height: 50.0),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  void showOverlay(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class About extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const About({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 400,
                  height: 465,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1.0),
                  ),
                  child: Center(
                    child: Image.asset(image),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          price,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          children: <Widget>[
                            const Text(
                              'Quantity: ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {},
                            ),
                            const Text(
                              '1',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () async {
                            var user = FirebaseAuth.instance.currentUser;
                            if (user == null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Loginscreen()),
                              );
                            } else {
                              // Add product to user's cart in Firestore
                              await FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(user.email)
                                  .collection('cart')
                                  .doc(name)
                                  .set({
                                'productName': name,
                                'productPrice': price,
                              });

                              // Updating the cart using Provider
                              var cart =
                                  Provider.of<Cart>(context, listen: false);
                              cart.add(Product(
                                name: name,
                                price: price,
                                description: '',
                                imageUrl: '',
                                stock: '',
                                // Add any other fields that your Product class may require
                              ));

                              // Show the pop-up message
                              showOverlay(context,
                                  "$name has been added to the basket.");
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15.0),
                            child: Text(
                              'Add to Basket',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showOverlay(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
