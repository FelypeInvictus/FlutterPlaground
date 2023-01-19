import 'package:app/screens/bottom_model_sheet.dart';
import 'package:app/screens/home_tab.dart';
import 'package:app/screens/learning_stack.dart';
import 'package:app/screens/container_hide.dart';
import 'package:app/screens/select_calendar.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
                return const containerHide();
              }),
            );
          }),
          child: Text('container hide'.toUpperCase()),
        ),
        space(),
        ElevatedButton(
          onPressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const BottomSheetTest();
              }),
            );
          }),
          child: Text('BottomSheet'.toUpperCase()),
        ),
        space(),
        ElevatedButton(
          onPressed: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return BasicDateTimeField();


                
              }),
            );
          }),
          child: Text('Test Date'.toUpperCase()),
        ),
      ]),
    );
  }
}

SizedBox space() {
  return const SizedBox(height: 20);
}
