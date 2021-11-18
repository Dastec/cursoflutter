import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  Resultado(this.pontuacao);

  String get fraseResultado {
    if (pontuacao < 8) {
      return "Parabéns! Pontuação $pontuacao";
    } else if (pontuacao < 12) {
      return "Você é bom! Pontuação $pontuacao";
    } else if (pontuacao < 16) {
      return "Impressionante! Pontuação $pontuacao";
    } else {
      return "Nivel Jedi! Pontuação $pontuacao";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
