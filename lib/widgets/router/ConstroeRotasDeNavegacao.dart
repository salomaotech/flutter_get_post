import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * Descricao:> Responsável por construir as rotas de navegação
 * Autor:> @salomaotech
 */
class ConstroeRotasDeNavegacao extends StatelessWidget {
  /* objetos */
  Widget _objeto;
  IconData _iconData;

  /* propriedades */
  String _title;

  /* construtor */
  ConstroeRotasDeNavegacao(this._objeto, this._title, this._iconData);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(_iconData),
      title: Text(this._title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => _objeto),
        );
      },
    );
  }
}
