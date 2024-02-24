import 'package:flutter/material.dart';

class Neuromorphic extends StatelessWidget {
  final Widget? child;
  const Neuromorphic({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              //darker shadow on the bottom right
              BoxShadow(
                  color: Colors.grey.shade600,
                  offset: const Offset(5, 5),
                  blurRadius: 15),

              //lighter shadown on the top left
              const BoxShadow(
                  color: Colors.white, offset: Offset(-5, -5), blurRadius: 15)
            ]),
        child: child,
      ),
    );
  }
}
