import "package:flutter/material.dart";

/**
 * Descricao:> AJuda a construir o widget de imagem via rede
 * Autor:> @salomaotech
 */

class ImagemUrlNetwork extends StatelessWidget {
  /* construtor */
  ImagemUrlNetwork(this._urlImagem);

  /* nome da imagem */
  String _urlImagem = "";

  @override
  Widget build(BuildContext context) {
    /* retorna a imagem com base no seu nome */
    return Image.network(_urlImagem);
  }
}
