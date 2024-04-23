import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core
import 'package:instagram/firebase_options.dart'; // Assuming firebase_options.dart contains Firebase options
import 'package:instagram/screens/login_screen.dart';
import 'package:instagram/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  try {
    // Initialize Firebase
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    runApp(const MyApp());
  } catch (e) {
    print('Error initializing Firebase: $e');
    // Handle error appropriately (e.g., show error dialog, log error, etc.)
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override   
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignupScreen(),
    );
  }
}
