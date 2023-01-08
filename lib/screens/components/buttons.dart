import 'package:app/screens/home_tab.dart';
import 'package:app/screens/learning_stack.dart';
import 'package:app/screens/container_hide.dart';

import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const HomeTab();
              }),
            );
          },
          child: Text('home'.toUpperCase()),
        ),
        space(),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const LearningStack();
              }),
            );
          },
          child: Text('stack'.toUpperCase()),
        ),
        space(),
        ElevatedButton(
          onPressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return containerHide();
              }),
            );
          }),
          child: Text('container hide'.toUpperCase()),
        ),
      ]),
    );
  }
}

SizedBox space() {
  return const SizedBox(height: 20);
}
