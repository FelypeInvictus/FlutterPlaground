import 'package:app/screens/components/generate_lucky_number.dart';
import 'package:flutter/material.dart';

class ShowLuckyNumber extends StatefulWidget {
  const ShowLuckyNumber({super.key});

  @override
  State<ShowLuckyNumber> createState() => _ShowLuckyNumberState();
}

class _ShowLuckyNumberState extends State<ShowLuckyNumber> {
  @override
  String luckyNumber = '';

  void _showLuckyNumber() {
    setState(() {
      luckyNumber = GenerateLuckyNumber();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mostrar número da sorte'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Aperte o botão para mostrar o número'),
          SizedBox(height: 30),
          Text('Seu número da sorte é: $luckyNumber'),
          SizedBox(height: 30),
          ElevatedButton(onPressed: _showLuckyNumber, child: Text('Gerar número'))
        ]),
      ),
    );
  }
}
