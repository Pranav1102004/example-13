import 'package:chatapp/commponent/neuromorphic_commponent.dart';
import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String path;
  const SquareTile({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Neuromorphic(
          child: Image.asset(
        path,
        color: Colors.grey,
      )),
    );
  }
}
