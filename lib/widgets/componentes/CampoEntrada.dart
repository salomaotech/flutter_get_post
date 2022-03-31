import "package:flutter/material.dart";

/**
 * Descricao:> Campo de entrada
 * Autor:> @salomaotech
 */

class CampoEntrada extends StatelessWidget {
  /* construtor */
  CampoEntrada(this._placeHolder, this._tamanhoFonte);

  /* propriedades */
  String _placeHolder = "";
  double _tamanhoFonte = 10;

  /* objetos */
  TextEditingController _controller = TextEditingController();

  /* get */
  TextEditingController get controller => _controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        labelText: _placeHolder,
      ),
      style: TextStyle(fontSize: _tamanhoFonte),
    );
  }
}
