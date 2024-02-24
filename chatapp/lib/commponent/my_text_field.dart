import 'package:chatapp/commponent/neuromorphic_commponent.dart';
import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final bool obsecure;
  final String hintText;
  final Widget? icon;
  const MyTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obsecure,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Neuromorphic(
        child: TextField(
      controller: controller,
      obscureText: obsecure,
      decoration: InputDecoration(
          //enabled border
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(13)),
          //focused border
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(13)),
          icon: icon,
          hintText: hintText,
          fillColor: Colors.grey),
    ));
  }
}
