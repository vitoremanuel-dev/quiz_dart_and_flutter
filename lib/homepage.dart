import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Quiz - Curso de Flutter e Dart'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlutterLogo(size: 300),
              ElevatedButton(
                onPressed: () {
                  print('Pressionado');
                },
                child: Text('Jogar', style: TextStyle(fontSize: 50)),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
