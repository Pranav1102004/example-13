import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Commponents/My_button.dart';
import 'package:flutter_application_1/Commponents/My_textField.dart';
import 'package:flutter_application_1/Commponents/square_title.dart';
import 'package:flutter_application_1/pages/auth_services.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();

  final passwordContoller = TextEditingController();
  void SignUserIn() async {
    //show loading circle

    //sign in -->
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: userNameController.text, password: passwordContoller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 50),

                //a message to pass
                const Text(
                  'Hi nice to see you around!',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),

                //username text field
                MyTextField(
                  controller: userNameController,
                  hintText: 'User Name',
                  obsecureText: false,
                ),

                const SizedBox(height: 10),

                //password text field
                MyTextField(
                  controller: passwordContoller,
                  hintText: 'Password',
                  obsecureText: true,
                ),
                const SizedBox(
                  height: 5,
                ),

                //forgot password
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forget Password ?'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //sign in button
                MyButton(
                  onTap: SignUserIn,
                ),
                const SizedBox(
                  height: 5,
                ),

                //or continue with
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    )),
                    Text("or Continue with"),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),

                //google sign in etc
                SquareTile(
                    onTap: () => AuthServices().signInWithGoogle(),
                    path: 'assets/images/google.png'),
                //not member
                const SizedBox(
                  height: 5.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('not a member ?'),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      'Register now !',
                      style: TextStyle(
                          color: Colors.lightBlue, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
