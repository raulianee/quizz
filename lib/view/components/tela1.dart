import 'package:flutter/material.dart';
import 'package:quizz/view/components/card_components.dart';
import 'package:quizz/view/components/lista.components.dart';

class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  List perguntas = Lista.perguntas;
  int NumeroP = 0;
  int contagemAcerto = 0;

  

  @override
  Widget build(BuildContext context) {


   void verificarAcerto(int op) {
      print('Número da pergunta: $NumeroP');
    if(NumeroP == perguntas.length - 1){
      Navigator.pushNamed(context, '/tela2', arguments: contagemAcerto);
      NumeroP = 0;
    }     if(op == perguntas[NumeroP]['Alternativa correta']){
      setState(() {
       contagemAcerto++;        
      });
       }

    setState(() {
      NumeroP++;
    });
   } // fim do método
     

    print(contagemAcerto);


    

   

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 123, 20),
        title: Text('Tela 1'),
      ),
      body: Column(
        children: [
          // Center(
          //   child: ElevatedButton(onPressed: () {
          //     Navigator.pushNamed(context, '/tela2');
          //   }, child: Text('Iniciar'),
          // ),
          // ),

          Center(
            child: Text(perguntas[NumeroP]['pergunta']),
          ),

          GestureDetector(
            onTap: () {
              verificarAcerto(1);
            },
            child: CardComponents(texto: perguntas[NumeroP]['respostas'][0]),
          ),

          GestureDetector(
            onTap: () {
              verificarAcerto(2);
            },
            child: CardComponents(texto: perguntas[NumeroP]['respostas'][1]),
          ),

          GestureDetector(
            onTap: () {
            verificarAcerto(3);
            },
            child: CardComponents(texto: perguntas[NumeroP]['respostas'][2]),
          ),

          GestureDetector(
            onTap: () {
              verificarAcerto(4);
            },
            child: CardComponents(texto: perguntas[NumeroP]['respostas'][3]),
          ),
          
        ],
      ),
    );
  }
}
