import 'package:flutter/material.dart';

class CardComponents extends StatefulWidget {
  const CardComponents({super.key, required this.texto});
  final String texto;

  @override
  State<CardComponents> createState() => _CardComponentsState();
}

class _CardComponentsState extends State<CardComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: 2000,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 250, 123, 20),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(widget.texto),
    );
  }
}
