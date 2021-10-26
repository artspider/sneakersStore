import 'package:flutter/material.dart';

class ModelPrice extends StatelessWidget {
  const ModelPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      child: Column(
        children: const [
          Text(
            '\$399',
            style: TextStyle(
              color: Colors.red,
              fontSize: 18,
              letterSpacing: 1.2,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          SizedBox(height: 7,),
          Text(
            '\$250',
            style: TextStyle(
              fontSize: 22,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w900
            ),
          ),
        ],
      ),
    );
  }
}