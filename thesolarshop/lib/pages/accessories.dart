import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thesolarshop/pages/about.dart';
import 'package:thesolarshop/pages/cart.dart';
import 'package:thesolarshop/pages/cartscreen.dart';
import 'package:thesolarshop/pages/contact.dart';
import 'package:thesolarshop/pages/loginscreen.dart';
import 'package:thesolarshop/pages/registerscreen.dart';
import 'package:thesolarshop/pages/product.dart';




class Accessories extends StatelessWidget {
  Accessories({Key? key}) : super(key: key);

  final List<Product> products = [
    Product(
      name: "FREEDOM Won Lite Home 5 4 LiFePO4 Solar Battery",
      price: "R38,690.28 excl. VAT",
      imageUrl: 'images/FREEDOM Won Lite Home 5 4 LiFePO4 Solar Battery.jpg',
      description: "",
      stock: '1 In Stock',
    ),
    Product(
      name: "FREEDOM Won Lite Home 10 8 LiFePO4 Solar Battery",
      price: "R72,194.57 excl. VAT",
      imageUrl: 'images/FREEDOM Won Lite Home 10 8 LiFePO4 Solar Battery.jpg',
      description: "",
      stock: '1 In Stock',
    ),
    Product(
      name: "FREEDOM Won Lite Home 20 16 LiFePO4 Solar Battery",
      price: "R129,476.75 excl. VAT",
      imageUrl: 'images/FREEDOM Won Lite Home 20 16 LiFePO4 Solar Battery.jpg',
      description: "",
      stock: '1 In Stock',
    ),
    Product(
      name: "Hubble Lithium AM2 5.5kWh 51V Battery",
      price: "R28,702.92 excl. VAT",
      imageUrl: 'images/Hubble Lithium AM2 5.5kWh 51V Battery.jpg',
      description: '',
      stock: '1 In Stock',
    ),
    Product(
      name: "Pylon UP2500 2.84kWh Li-Ion Solar Battery 24V with CAN connection",
      price: "R16,057.47 excl. VAT",
      imageUrl: 'images/Pylon UP2500 2.84kWh Li-Ion Solar Battery 24V with CAN connection.jpg',
      description: '',
      stock: '1 In Stock',
    ),
    Product(
      name: "Pylon UP5000 4.8kWh Li-Ion Solar Battery 48V",
      price: "R27,229.37 excl. VAT",
      imageUrl: 'images/Pylon UP5000 4.8kWh Li-Ion Solar Battery 48V.jpg',
      description: '',
      stock: '1 In Stock',
    ),
    Product(
      name: "Pylon US2000 2.4kWh Li-Ion Solar Battery (excl. brackets)",
      price: "R14,094.99 excl. VAT",
      imageUrl: 'images/Pylon US2000 2.4kWh Li-Ion Solar Battery (excl. brackets).jpg',
      description: '',
      stock: '1 In Stock',
    ),
    Product(
      name: "Pylon US3000C 3.5kWh Li-Ion Solar Battery (excl. brackets)",
      price: "R20,872.36 excl. VAT",
      imageUrl: 'images/Pylon US3000C 3.5kWh Li-Ion Solar Battery (excl. brackets).jpg',
      description: '',
      stock: '1 In Stock',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Text(
          "Accessories",
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
                MaterialPageRoute(builder: (context) => const CartScreen()), // Replace CartScreen() with your actual cart screen widget
              );
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.blue.shade200,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 25,
              mainAxisSpacing: 25,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              final product = products[index];
              return HoverCard(product: product);
            },
          ),
        ),
      ),
    );
  }
}

class HoverCard extends StatefulWidget {
  final Product product;

  const HoverCard({Key? key, required this.product}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HoverCardState createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> with SingleTickerProviderStateMixin {
  final bool _isExpanded = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Method to show the pop-up message
  void showOverlay(BuildContext context, String message) {
    final overlay = Overlay.of(context);

    OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).size.height / 2 - 50,
        left: MediaQuery.of(context).size.width / 2 - 150,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.check_circle,
                  color: Colors.white,
                ),
                const SizedBox(width: 8),
                Text(
                  message,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    // Remove the overlay entry after 3 seconds
    Future.delayed(const Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        _controller.forward();
      },
      onExit: (_) {
        _controller.reverse();
      },
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(
                        widget.product.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.product.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        widget.product.price,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.product.stock,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.product.description,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          var cart = Provider.of<Cart>(context, listen: false);
                          cart.add(widget.product);

                          // Show the pop-up message
                          showOverlay(context, "${widget.product.name} has been added to the basket.");

                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text("Add to Basket"),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Card(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Image.network(
                      widget.product.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(widget.product.name),
                        const SizedBox(height: 5),
                        Text(widget.product.price),
                      ],
                    ),
                  ),
                ],
              ),
              if (_animation.value > 0.5)
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(3.14 * _animation.value),
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.identity()
                              ..rotateY(-3.14 * _animation.value),
                            child: Text(
                              widget.product.description,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              var cart = Provider.of<Cart>(context, listen: false);
                              cart.add(widget.product);

                              // Show the pop-up message
                              showOverlay(context, "${widget.product.name} has been added to the basket.");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isExpanded
                                  ? Colors.blue.shade200 // Button color when hovering
                                  : Colors.blue.shade900, // Button color when not hovering
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.identity()
                                ..rotateY(-3.14 * _animation.value),
                              child: const Text("Add to Basket"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
