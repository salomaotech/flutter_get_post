import "package:flutter/material.dart";

/**
 * Descricao:> Espaçador de elementos
 * Autor:> @salomaotech
 */

class EspacoEntreElemento extends StatelessWidget {
  /* construtor */
  EspacoEntreElemento(this._largura, this._altura);

  /* largura e altura */
  double _largura = 0;
  double _altura = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _largura,
      height: _altura,
    );
  }
}
