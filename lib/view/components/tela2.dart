import 'package:flutter/material.dart';
import 'package:quizz/view/components/tela1.dart';

class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  
   

  @override
  Widget build(BuildContext context) {


    final int contagemAcerto = ModalRoute.of(context)!.settings.arguments as int;
    int result = 10;

    return Scaffold(
    appBar: AppBar(
     title: Text('Quizz'),
    centerTitle: true,
    
    backgroundColor: const Color.fromARGB(255, 250, 123, 20),
   
    ),
    body: Column(
      children: [
        Center(
          child: Text('Acertos: $contagemAcerto', style: TextStyle(fontSize: 30),),

          ),
          ElevatedButton(onPressed: () => Navigator.popAndPushNamed(context, '/tela1'), child: Text('Voltar'),)
      ],
    ),
    );
  }
}