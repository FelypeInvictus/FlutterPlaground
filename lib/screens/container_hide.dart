import 'package:flutter/material.dart';

class containerHide extends StatefulWidget {
  const containerHide({super.key});

  @override
  State<containerHide> createState() => _containerHide();
}

class _containerHide extends State<containerHide> {
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
