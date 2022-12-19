import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App para testes',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const telaHideTeste(),
    );
  }
}

class telaHideTeste extends StatefulWidget {
  const telaHideTeste({super.key});

  @override
  State<telaHideTeste> createState() => _telaHideTesteState();
}

class _telaHideTesteState extends State<telaHideTeste> {
  bool _isVisible = true;

  void _hideContainer() {
    setState(() {
      _isVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(_isVisible) Container(
              height: 50,
              width: 80,
              color: Colors.amber,
            ),
          ElevatedButton(
            onPressed: _hideContainer, 
            child: const Text('Ocultar') )
            
          ]
      ),
      ),
    );
  }
}
