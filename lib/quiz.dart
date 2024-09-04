import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        "pergunta": "Quem descobriu o Brasil?",
        "respostas": [
          "Dom Pedro I",
          "Pedro Álvares Cabral",
          "Tiradentes",
          "Dom Pedro II",
        ],
        "alternativa_correta": 2,
      }
    ];

    quiz.add({
      "pergunta": "O Flutter é...",
      "respostas": [
        "Uma linguagem",
        "Um aplicativo",
        "Um SDK",
        "Um notebook",
      ],
      "alternativa_correta": 3,
    });

    int perguntaNumero = 1;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Quiz - Curso de Flutter e Dart'),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Text('Pergunta $perguntaNumero de 10',
                      style: TextStyle(fontSize: 20))),
              Text('Pergunta: \n' + quiz[perguntaNumero - 1]['pergunta'],
                  style: TextStyle(fontSize: 20)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('Pressionado 1');
                  },
                  child: Text(quiz[perguntaNumero - 1]['respostas'][0],
                      style: TextStyle(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('Pressionado 2');
                  },
                  child: Text(quiz[perguntaNumero - 1]['respostas'][1],
                      style: TextStyle(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('Pressionado 3');
                  },
                  child: Text(quiz[perguntaNumero - 1]['respostas'][2],
                      style: TextStyle(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('Pressionado 4');
                  },
                  child: Text(quiz[perguntaNumero - 1]['respostas'][3],
                      style: TextStyle(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
