import 'package:chatapp/auth%20services/google_sign_in.dart';
import 'package:chatapp/commponent/my_button.dart';
import 'package:chatapp/commponent/my_text_field.dart';
import 'package:chatapp/commponent/neuromorphic_commponent.dart';
import 'package:chatapp/commponent/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                //logo
                const SizedBox(
                  height: 25.0,
                ),
                const Neuromorphic(
                    child: Icon(
                  Icons.chat,
                  size: 50,
                )),
                const SizedBox(
                  height: 24.0,
                ),

                //text message
                const Neuromorphic(
                    child: Text(
                  "Hi, whatsup lets chat!",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                )),
                const SizedBox(
                  height: 24.0,
                ),
                //email field
                MyTextfield(
                  icon: Icon(Icons.email),
                  controller: email,
                  hintText: "email",
                  obsecure: false,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                //password field
                MyTextfield(
                  icon: Icon(Icons.password),
                  controller: password,
                  hintText: "password",
                  obsecure: true,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                //forgot password
                const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Neuromorphic(child: Text("Forget password?")),
                ]),
                const SizedBox(
                  height: 24.0,
                ),
                //sign in
                const MyButton(),
                const SizedBox(
                  height: 20.0,
                ),
                //or continue with
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    )),
                    Text(
                      "or continue with",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ))
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),

                //google or facebook or whatever
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: SignInWithGoogle,
                        child: SquareTile(
                            path: "assets/images/icons8-google-50.png"))
                  ],
                ),
                //not register register now!
                const SizedBox(
                  height: 20.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Haven't register? ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Register now!",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
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
