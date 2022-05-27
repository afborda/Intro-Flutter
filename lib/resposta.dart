import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final Object response;
  final void Function() onTap;

  Resposta(this.response, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: onTap,
          child: Text(response.toString(),
              style: TextStyle(fontSize: 19, color: Colors.white))),
    );
  }
}
