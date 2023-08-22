import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to view solar products page
              },
              child: const Text('View Solar Products'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to add solar product page
              },
              child: const Text('Add Solar Product'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to edit solar products page
              },
              child: const Text('Edit Solar Products'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to delete solar products page
              },
              child: const Text('Delete Solar Products'),
            ),
          ],
        ),
      ),
    );
  }
}
