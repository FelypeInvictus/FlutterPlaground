import 'package:app/learning_stack.dart';
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
      home: const LearningStack(),
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
      _isVisible = !_isVisible;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: _isVisible,
            child: Container(
              height: 50,
              width: 80,
              color: Colors.amber,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          
          ElevatedButton(
            //String texto = '',
            //String texto = _isVisible ? 'Ocultar' : 'Mostrar';
              onPressed: _hideContainer, child: Text(_isVisible ? 'Ocultar' : 'Mostrar')),
        ]),
      ),
    );
  }
}
