// import 'package:flutter/material.dart';
// import 'package:hungry/views/screens/page_switcher.dart';
// import 'package:hungry/views/utils/AppColor.dart';
// import 'package:hungry/views/widgets/custom_text_field.dart';
// import 'package:hungry/views/widgets/modals/login_modal.dart';

// class RegisterModal extends StatelessWidget {
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
//                   'Bắt đầu nào',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 22,
//                       fontWeight: FontWeight.w700,
//                       fontFamily: 'inter'),
//                 ),
//               ),
//               // Form
//               CustomTextField(title: 'Email', hint: 'youremail@email.com'),
//               CustomTextField(
//                   title: 'Tên đầy đủ',
//                   hint: 'Tên đầy đủ của bạn',
//                   margin: EdgeInsets.only(top: 16)),
//               CustomTextField(
//                   title: 'Mật khẩu',
//                   hint: '**********',
//                   obsecureText: true,
//                   margin: EdgeInsets.only(top: 16)),
//               CustomTextField(
//                   title: 'Nhập đầy đủ mật khẩu',
//                   hint: '**********',
//                   obsecureText: true,
//                   margin: EdgeInsets.only(top: 16)),
//               // Register Button
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
//                   child: Text('Đăng ký',
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
//               // Login textbutton
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                   showModalBottomSheet(
//                     context: context,
//                     backgroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(20),
//                             topRight: Radius.circular(20))),
//                     isScrollControlled: true,
//                     builder: (context) {
//                       return LoginModal();
//                     },
//                   );
//                 },
//                 style: TextButton.styleFrom(
//                   primary: Colors.white,
//                 ),
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Bạn đã có account? ',
//                     style: TextStyle(color: Colors.grey),
//                     children: [
//                       TextSpan(
//                           style: TextStyle(
//                             color: AppColor.primary,
//                             fontWeight: FontWeight.w700,
//                             fontFamily: 'inter',
//                           ),
//                           text: 'Đăng nhập')
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
import 'package:hungry/views/widgets/modals/login_modal.dart';
import 'package:hungry/views/utils/color_utils.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key key, this.onSubmit}) : super(key: key);
  final ValueChanged<String> onSubmit;

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // declare a GlobalKey
  final _formKey = GlobalKey<FormState>();
  // declare a variable to keep track of the input text
  String _name = '';

  void _submit() {
    // validate all the form fields
    if (_formKey.currentState.validate()) {
      // on success, notify the parent widget
      widget.onSubmit(_name);
    }
  }

  void changeText(value) => setState(() => _name = value);

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Đăng ký",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("0A5550"),
            hexStringToColor("094543"),
            hexStringToColor("0A5550")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo2.png"),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "UserName",
                    Icons.person_outline,
                    false,
                    _userNameTextController,
                    _userNameTextController.value.text,
                    changeText),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Email Id",
                    Icons.person_outline,
                    false,
                    _emailTextController,
                    _emailTextController.value.text,
                    changeText),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Password",
                    Icons.lock_outlined,
                    true,
                    _passwordTextController,
                    _passwordTextController.value.text,
                    changeText),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "Đăng ký", () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  }).onError((error, stackTrace) {
                    //print("Error ${error.toString()}");
                    if (error.toString() ==
                        "[firebase_auth/unknown] Given String is empty or null") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Thông tin không được để trống!",
                              style: TextStyle(color: Colors.red))));
                    } else if (error.toString() ==
                        "[firebase_auth/invalid-email] The email address is badly formatted.") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Email không hợp lệ!",
                              style: TextStyle(color: Colors.red))));
                    } else if (error.toString() ==
                        "[firebase_auth/wrong-password] The password is invalid or the user does not have a password.") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              "Password không đúng hoặc User không tồn tại!",
                              style: TextStyle(color: Colors.red))));
                    } else if (error.toString() ==
                        "[firebase_auth/email-already-in-use] The email address is already in use by another account.") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Email đã tồn tại!",
                              style: TextStyle(color: Colors.red))));
                    }
                    print(error.toString());
                  });
                },
                    _name.isNotEmpty
                        ? _submit
                        : () {
                            return 'abc';
                          })
              ],
            ),
          ))),
    );
  }
}
