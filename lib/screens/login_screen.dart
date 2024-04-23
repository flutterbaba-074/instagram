import 'package:flutter/material.dart';
import 'package:instagram/widgets/tesxtfield_input.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
  
 final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();


class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFieldInput(
            textEditingController: emailcontroller,
             hintText: "enter your email", 
             textInputType: TextInputType.emailAddress
            ),
            SizedBox(
              height: 10,
            ),
             TextFieldInput(
            textEditingController: emailcontroller,
             hintText: "enter your passwrod", 
            textInputType: TextInputType.visiblePassword
             ),
        ],
      ),
    );
  }
}