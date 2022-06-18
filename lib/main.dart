// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:hungry/views/screens/auth/welcome_page.dart';

// void main() {
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     systemNavigationBarColor: Colors.black,
//     systemNavigationBarIconBrightness: Brightness.light,
//   ));
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         fontFamily: 'Open Sans',
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: WelcomePage(),
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:hungry/views/widgets/modals/login_modal.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAaXc4aT0YSI7afshSAo7-uR2RBH_7MyJc", // Your apiKey
      appId: "1:820904930063:android:6e2684c718a01f2fc7ac7a", // Your appId
      messagingSenderId: "XXX", // Your messagingSenderId
      projectId: "login-registration-flutter", // Your projectId
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}
