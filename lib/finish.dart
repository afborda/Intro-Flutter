import 'package:flutter/material.dart';

class Finish extends StatelessWidget {
  final int pontuacaoTotal;
  final void Function() reiniciar;

  Finish(this.pontuacaoTotal, this.reiniciar);

  String get fraseResultado {
    if (pontuacaoTotal < 8) {
      return 'Parabéns!';
    } else if (pontuacaoTotal < 12) {
      return 'Você é bom!';
    } else if (pontuacaoTotal < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          '${fraseResultado} Você fez ${pontuacaoTotal} pontos.',
          style: TextStyle(
              fontSize: 20,
              color: Colors.greenAccent[300],
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )),
        TextButton(
          child: Text('Reiniciar?',
              style: TextStyle(fontSize: 18, color: Colors.white)),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
          ),
          onPressed: reiniciar,
        )
      ],
    );
  }
}
