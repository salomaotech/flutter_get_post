import "package:flutter/material.dart";

import '../../widgets/home/Home.dart';
import '../components/MenuTopo.dart';

/**
 * Descricao:> Tela da home
 * Autor:> @salomaotech
 */
class TelaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* widgets da home */
    List<Widget> items = <Widget>[];

    /* popula itens */
    items.add(Center(
      child: Text(
        "PI V-A 2022 - @salomaotech",
        style: TextStyle(fontSize: 28),
      ),
    ));

    /* retorna a home */
    return Home("Home", items, MenuTopo());
  }
}
