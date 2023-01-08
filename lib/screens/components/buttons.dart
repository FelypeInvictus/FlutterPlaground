import 'dart:html';

import 'package:app/screens/home.dart';
import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const home();
              }),
            );
          },
          child: Text('home'.toUpperCase()),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Stack();
              }),
            );
          },
          child: Text('stack'.toUpperCase()),
        ),
        ElevatedButton(
          onPressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Stack();
              }),
            );
          }),
          child: Text('container hide'.toUpperCase()),
        ),
      ]),
    );
  }
}
