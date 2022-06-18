// import 'package:flutter/material.dart';
// import 'package:hungry/views/screens/page_switcher.dart';
// import 'package:hungry/views/utils/AppColor.dart';
// import 'package:hungry/views/widgets/custom_text_field.dart';

// class LoginModal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height * 85 / 100,
//           padding: EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 16),
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//           child: ListView(
//             shrinkWrap: true,
//             padding: EdgeInsets.only(
//                 bottom: MediaQuery.of(context).viewInsets.bottom),
//             physics: BouncingScrollPhysics(),
//             children: [
//               Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   width: MediaQuery.of(context).size.width * 35 / 100,
//                   margin: EdgeInsets.only(bottom: 20),
//                   height: 6,
//                   decoration: BoxDecoration(
//                       color: Colors.grey[300],
//                       borderRadius: BorderRadius.circular(20)),
//                 ),
//               ),
//               // header
//               Container(
//                 margin: EdgeInsets.only(bottom: 24),
//                 child: Text(
//                   'Đăng nhập',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 22,
//                       fontWeight: FontWeight.w700,
//                       fontFamily: 'inter'),
//                 ),
//               ),
//               // Form
//               CustomTextField(title: 'Email', hint: 'email@email.com'),
//               CustomTextField(
//                   title: 'Mật khẩu',
//                   hint: '**********',
//                   obsecureText: true,
//                   margin: EdgeInsets.only(top: 16)),
//               // Log in Button
//               Container(
//                 margin: EdgeInsets.only(top: 32, bottom: 6),
//                 width: MediaQuery.of(context).size.width,
//                 height: 60,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                     Navigator.of(context).pushReplacement(MaterialPageRoute(
//                         builder: (context) => PageSwitcher()));
//                   },
//                   child: Text('Đăng nhập',
//                       style: TextStyle(
//                           color: AppColor.secondary,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w600,
//                           fontFamily: 'inter')),
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                     primary: AppColor.primarySoft,
//                   ),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom(
//                   primary: Colors.white,
//                 ),
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Quên mật khẩu? ',
//                     style: TextStyle(color: Colors.grey),
//                     children: [
//                       TextSpan(
//                           style: TextStyle(
//                             color: AppColor.primary,
//                             fontWeight: FontWeight.w700,
//                             fontFamily: 'inter',
//                           ),
//                           text: 'Reset')
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hungry/views/reusable_widgets/reusable_widget.dart';
import 'package:hungry/views/screens/home_page.dart';
import 'package:hungry/views/widgets/modals/reset_password.dart';
import 'package:hungry/views/widgets/modals/register_modal.dart';
import 'package:hungry/views/utils/color_utils.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo1.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 5,
                ),
                forgetPassword(context),
                firebaseUIButton(context, "Sign In", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.white70),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPassword())),
      ),
    );
  }
}
