import 'package:flutter/cupertino.dart';

import '../router/ConstroeRotasDeNavegacao.dart';

/**
 * Descricao:> Classe abstrata para a criação de menus do topo
 * Autor:> @salomaotech
 */
abstract class MenuTopoEsquerdo {
  /* objetos */
  final List<Widget> _items = <Widget>[];

  /* adiciona widgets comuns */
  void addItemWidgetComum(Widget object) {
    _items.add(object);
  }

  /* adiciona rotas que irão chamar a página do template */
  void addItemRota(Widget object, String title, IconData iconData) {
    _items.add(ConstroeRotasDeNavegacao(object, title, iconData));
  }

  /* retorno */
  List<Widget> get items => _items;
}
