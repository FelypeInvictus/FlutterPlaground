import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearningStack extends StatelessWidget {
  const LearningStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 30,
            color: Colors.green,
          ),
          Positioned(
            bottom: 30,
            right: 5,
            left: 5,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
