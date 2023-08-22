import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// ignore: unused_import
import 'package:thesolarshop/firebase_options.dart';
import 'package:thesolarshop/pages/cart.dart';
import 'package:thesolarshop/pages/homescreen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAK3iojBm8MFHSesKDgHnDxmX9TsBPQFvc",
            appId: "1:587505974347:web:91cc6703206694b1b721ce",
            messagingSenderId: "587505974347",
            projectId: "ta-solar")
            );
  }else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          Cart(), // Replace Cart() with your actual Cart class instance
      child: const MaterialApp(
        title: 'TA Solar',
        home: HomeScreen(),
      ),
    ); 
  }
}
