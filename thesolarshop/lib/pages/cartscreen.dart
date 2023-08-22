import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thesolarshop/pages/about.dart';
import 'package:thesolarshop/pages/contact.dart';
import 'package:thesolarshop/pages/loginscreen.dart';
import 'package:thesolarshop/pages/registerscreen.dart';

import 'cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<Cart>(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade200,
            Colors.blue.shade900,
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Your Cart",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white, // Set app bar background color to white
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          actions: [
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
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "About",
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
                  MaterialPageRoute(builder: (context) => const CartScreen()),
                );
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent, // Set scaffold background color to transparent
        body: ListView.builder(
          itemCount: cart.products.length,
          itemBuilder: (context, index) => Card(
            elevation: 3, // Add a subtle shadow for the card
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(
                Icons.shopping_basket, // Replace this with the basket icon you designed
                color: Colors.orange, // Customize the basket icon color to match the theme
              ),
              title: Text(cart.products[index].name),
              subtitle: Text(
                cart.products[index].price,
                style: const TextStyle(color: Colors.red), // Set the price text color to red
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.remove_circle_outline,
                  color: Colors.red, // Use a distinctive color for the remove button
                ),
                onPressed: () {
                  // Implement your logic to remove the item from the cart
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
