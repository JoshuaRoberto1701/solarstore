import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thesolarshop/pages/about.dart';
import 'package:thesolarshop/pages/cart.dart';
import 'package:thesolarshop/pages/cartscreen.dart';
import 'package:thesolarshop/pages/contact.dart';
import 'package:thesolarshop/pages/loginscreen.dart';
import 'package:thesolarshop/pages/registerscreen.dart';
import 'package:thesolarshop/pages/product.dart';




class Inverters extends StatelessWidget {
  Inverters({Key? key, required String image, required String name, required String price}) : super(key: key);

  final List<Product> products = [
    Product(
      name: "KODAK Solar Off-Grid Inverter 5.6kW 48V",
      price: "R13,458.89 excl. VAT",
      imageUrl: 'images/KODAK Solar Off-Grid Inverter 5.6kW 48V.jpg',
      description: "",
      stock: '1 In Stock',
    ),
    Product(
      name: "KODAK Solar Off-Grid Inverter 10kW 48V",
      price: "R24,602.94 excl. VAT",
      imageUrl: 'images/KODAK Solar Off-Grid Inverter 10kW 48V.jpg',
      description: "",
      stock: '1 In Stock',
    ),
    Product(
      name: "KODAK Solar Off-Grid Inverter MAX 7.2kW 48V Hybrid Inverter",
      price: "R17,927.63 excl. VAT",
      imageUrl: 'images/KODAK Solar Off-Grid Inverter MAX 7.2kW 48V Hybrid Inverter.jpg',
      description: "",
      stock: '1 In Stock',
    ),
    Product(
      name: "KODAK Solar Off-Grid Inverter VMIII 3kW 24V Hybrid Inverter",
      price: "R8,682.45 excl. VAT",
      imageUrl: 'images/KODAK Solar Off-Grid Inverter VMIII 3kW 24V Hybrid Inverter.jpg',
      description: '',
      stock: '1 In Stock',
    ),
    Product(
      name: "Kool 1KW12V",
      price: "Kool 1KW/12V (1 x 100ah + 30A PWM) Build In",
      imageUrl: 'images/Kool 1KW12V.jpg',
      description: 'Kool 1KW/12V (1 x 100ah + 30A PWM) Build In',
      stock: '1 In Stock',
    ),
    Product(
      name: "Solis 3.6kW S6 Dual MPPT – Single Phase with DC PV Inverter",
      price: "R10,012.00 excl. VAT",
      imageUrl: 'images/Solis 3.6kW S6 Dual MPPT – Single Phase with DC PV Inverter.jpg',
      description: '',
      stock: '1 In Stock',
    ),
    Product(
      name: "Solis 4.6kW S6 Dual MPPT – Single Phase with DC PV Inverter",
      price: "R215,414.47 excl. VAT",
      imageUrl: 'images/Solis 4.6kW S6 Dual MPPT – Single Phase with DC PV Inverter.jpg',
      description: '',
      stock: '1 In Stock',
    ),
    Product(
      name: "Solis 6kW 4G 3 Phase Dual MPPT – DC PV Inverter",
      price: "R11,331.76 excl. VAT",
      imageUrl: 'images/Solis 6kW 4G 3 Phase Dual MPPT – DC PV Inverter.jpg',
      description: '',
      stock: '1 In Stock',
    ),
    Product(
      name: "Solis 10kW 4G 3 Phase Dual MPPT – DC PV Inverter",
      price: "R15,670.79 excl. VAT",
      imageUrl: 'images/Solis 10kW 4G 3 Phase Dual MPPT – DC PV Inverter.jpg',
      description: '',
      stock: '1 In Stock',
    ),
    Product(
      name: "Sunsynk Sun 5K Hybrid Inverter",
      price: "R22,421.73 excl. VAT",
      imageUrl: 'images/Sunsynk Sun 5K Hybrid Inverter.jpg',
      description: '',
      stock: '1 In Stock',
    ),
        Product(
      name: "Sunsynk Sun 8K Hybrid Inverter",
      price: "R64,971.23 excl. VAT",
      imageUrl: 'images/Sunsynk Sun 8K Hybrid Inverter.jpg',
      description: '',
      stock: '1 In Stock',
    ),
        Product(
      name: "Sunsynk Sun 16K Hybrid Inverter",
      price: "R64,971.23 excl. VAT",
      imageUrl: 'images/Sunsynk Sun 16K Hybrid Inverter.jpg',
      description: '',
      stock: '1 In Stock',
    ),
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
