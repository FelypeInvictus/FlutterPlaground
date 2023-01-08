import 'package:app/screens/components/buttons.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App para testes'),
      centerTitle: true,
      ),
      body: const buttons(),
    );
  }
}