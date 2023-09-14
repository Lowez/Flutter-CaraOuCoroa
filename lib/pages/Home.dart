// ignore_for_file: file_names

import 'dart:math';

import 'package:cara_coroa/pages/Resultado_jogo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibirResultado() {
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultadoJogo(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 97,189,134),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/logoC.png"
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () => _exibirResultado(),
              child: Image.asset(
                "assets/img/botao_jogar.png"
              ),
            )
          ],
        ),
      ),
    );
  }
}