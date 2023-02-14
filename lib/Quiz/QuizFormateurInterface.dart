import 'package:flutter/material.dart';

class FromateurQuiz extends StatefulWidget {
  const FromateurQuiz({Key? key}) : super(key: key);

  @override
  State<FromateurQuiz> createState() => _FromateurQuizState();
}

class _FromateurQuizState extends State<FromateurQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("ADD Quiz"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Column(
            children: [
              Row(
                children: [Text("Qustion 1 :"),
                  Spacer(),
                  Icon(Icons.edit)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
