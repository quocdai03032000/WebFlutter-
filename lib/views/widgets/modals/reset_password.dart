import 'package:firebase_auth/firebase_auth.dart';
import 'package:hungry/views/reusable_widgets/reusable_widget.dart';
import 'package:hungry/views/utils/color_utils.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key key, this.onSubmit}) : super(key: key);
  final ValueChanged<String> onSubmit;

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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

  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Reset Password",
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
                firebaseUIButton(context, "Reset Password", () {
                  FirebaseAuth.instance
                      .sendPasswordResetEmail(email: _emailTextController.text)
                      .then((value) => Navigator.of(context).pop());
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
