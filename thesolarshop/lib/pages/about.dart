import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 10.0), // Adding spacing on the left and top
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 1303,
                  height: 465,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1.0),
                  ),
                  child: const Center(
                    child: Text(
                      '',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  left: 25.0, // Position the smaller container to the left
                  top: 10.0, // Add some spacing from the top
                  child: Container(
                    width: 400,
                    height: 440,
                    decoration: BoxDecoration(
                      color: Colors.white, // Set background color to white
                      border: Border.all(color: Colors.black, width: 1.0), // Add thin black border
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20.0), // Adding spacing between the containers
            Container(
  width: 500,
  height: 465,
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.black, width: 1.0),
    borderRadius: BorderRadius.circular(10),  // Add this line for border radius to make container look visually appealing
  ),
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,  // Align items to the start of the container
      children: <Widget>[
        const Text(
          '\$50',  // Add your price here
          style: TextStyle(
            color: Colors.black, 
            fontSize: 36,  // Make font larger
            fontWeight: FontWeight.bold,  // Make font bold
          ),
        ),
        const Text(
          'Item Description',  // Add your item description here
          style: TextStyle(
            color: Colors.grey, 
            fontSize: 14,  // Make font smaller
          ),
        ),
        const SizedBox(height: 20.0),  // Add some spacing
        Row(
          children: <Widget>[
            const Text(
              'Quantity: ',
              style: TextStyle(
                color: Colors.black, 
                fontSize: 20,
              ),
            ),
            // Add increment and decrement buttons for quantity
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {},  // Add your decrement function here
            ),
            const Text(
              '1',  // Add your quantity variable here
              style: TextStyle(
                color: Colors.black, 
                fontSize: 20,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},  // Add your increment function here
            ),
          ],
        ),
        const SizedBox(height: 20.0),  // Add some spacing
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),  // Add your add to basket function here
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
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
)
          ],
        ),
      ),
    );
  }
}