// ignore_for_file: must_be_immutable, file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ResultadoJogo extends StatefulWidget {
  late String valor;
  ResultadoJogo(this.valor, {super.key});

  @override
  State<ResultadoJogo> createState() => _ResultadoJogoState();
}

class _ResultadoJogoState extends State<ResultadoJogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 97,189,134),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/img/moeda_${widget.valor}.png",
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                "assets/img/botao_voltar.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}