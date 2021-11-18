import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> _respostas;
  final void Function(int) quantoResponder;
  final List<Map> _perguntas;
  final int _perguntaSelecionada;

  Questionario(this._respostas, this.quantoResponder, this._perguntas,
      this._perguntaSelecionada);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
        ..._respostas.map((resp) {
          return Resposta(
            resp['texto'].toString(),
            () => quantoResponder(int.parse(resp['pontuacao'].toString())),
          );
        }).toList(),
      ],
    );
  }
}
