import "package:flutter/material.dart";

/**
 * Descricao:> AJuda a construir o widget de imagem
 * Autor:> @salomaotech
 */

class Imagem extends StatelessWidget {
  /* construtor */
  Imagem(this._nomeImagem);

  /* nome da imagem */
  String _nomeImagem = "";

  @override
  Widget build(BuildContext context) {
    /* retorna a imagem com base no seu nome */
    return Image.asset("assets/imagens/" + _nomeImagem + ".png");
  }
}
