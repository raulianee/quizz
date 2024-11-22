import 'package:flutter/material.dart';
import 'package:quizz/view/components/tela1.dart';
import 'package:quizz/view/components/tela2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        
        '/tela1': (context) => Tela1(),
        '/tela2': (context) => Tela2(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz'),
          backgroundColor: const Color.fromARGB(255, 250, 123, 20),
        ),
        body: Btn(),
      ),
    );
  }
}

class Btn extends StatelessWidget {
  const Btn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Row(
                    
              children: [
             Image(image: AssetImage('assets/images/quizz.png'),
             ),
              
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tela1');
                  },
                  child: Text('Iniciar'),
                ),
              ),
            ],
            
          ),
        ],
      ),
    );
  }
}
