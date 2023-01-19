import 'package:flutter/material.dart';

class BottomSheetTest extends StatelessWidget {
  const BottomSheetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 95, 164, 80),
        //useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet Test'),
        centerTitle: true),
        body: const BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return 


              Container(
               // width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height *.60,
                
               
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('BottomSheet'),
                      ElevatedButton(
                        child: const Text('Fechar'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    
                    ],
                  ),
  
                
              ),
  
              );
            },
          );
        },
      ),
    );
  }
}
