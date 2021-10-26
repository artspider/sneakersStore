import 'package:flutter/material.dart';

class ModelName extends StatelessWidget {
  const ModelName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 90,
      child: Text(
        'Nike shoe 90 EZ Black',
        style: TextStyle(
          fontSize: 16,
          letterSpacing: 1.2,
          wordSpacing: 1.5,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}