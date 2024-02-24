import 'package:chatapp/commponent/neuromorphic_commponent.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Function()? onTap() {
    FirebaseAuth.instance.signOut();
    return null;
  }

  final String? user = FirebaseAuth.instance.currentUser?.displayName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
              onTap: onTap, child: Neuromorphic(child: Icon(Icons.logout))),
        ],
      )),
      body: Center(
        child: Text(user!),
      ),
    );
  }
}
