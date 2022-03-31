import "package:flutter/material.dart";

/**
 * Descricao:> Constroe o menu to topo
 * Autor:> @salomaotech
 */
class WidgetMenuTopo extends StatelessWidget {
  /* lista de widgets */
  List<Widget> _itemsMenu = <Widget>[];

  /* construtor */
  WidgetMenuTopo(this._itemsMenu);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: _itemsMenu.length,
        itemBuilder: (context, index) {
          final item = _itemsMenu[index];
          return item;
        },
      ),
    );
  }
}
