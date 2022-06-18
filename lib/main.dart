import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hungry/views/screens/auth/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAaXc4aT0YSI7afshSAo7-uR2RBH_7MyJc",
      appId: "1:820904930063:android:6e2684c718a01f2fc7ac7a",
      messagingSenderId: "XXX",
      projectId: "login-registration-flutter",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Open Sans',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomePage(),
    );
  }
}
