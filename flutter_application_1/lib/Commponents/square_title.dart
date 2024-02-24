import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String path;
  final Function()? onTap;
  SquareTile({super.key, required this.path, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[200]),
        child: Image.asset(path),
      ),
    );
  }
}
