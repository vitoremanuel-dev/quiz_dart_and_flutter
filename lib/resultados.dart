import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key, required this.acertos});

  final int acertos;

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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Resultado', style: TextStyle(fontSize: 20)),
                Text('Você acertou \n $acertos de 10 \n perguntas',
                    style: TextStyle(fontSize: 20)),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Pressionado');
                    },
                    child:
                        Text('Jogar Novamente', style: TextStyle(fontSize: 20)),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
