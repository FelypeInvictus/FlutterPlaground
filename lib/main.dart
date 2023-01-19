import 'package:app/screens/home_tab.dart';
import 'package:app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //O suprassumo do Aplicativo hehe...
      //O localizations traduz alguns widget para o portugues... Incrivel, n?
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [Locale('pt', 'BR')],
      debugShowCheckedModeBanner: false,
      title: 'App para testes',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const home(),
    );
  }
}

