import 'package:projeto_integrador/resources/components/MenuTopo.dart';
import 'package:projeto_integrador/widgets/home/Home.dart';
import 'package:flutter/material.dart';

/**
 * Descricao:> Responsável por iniciar o app
 * Autor:> @salomaotech
 */
void main() {
  /* widgets */
  List<Widget> items = <Widget>[];

  /* popula itens */
  items.add(Center(
    child: Text(
      "PI V-A 2022 - @salomaotech",
      style: TextStyle(fontSize: 28),
    ),
  ));

  /* retorno */
  runApp(Home("Home", items, MenuTopo()));
}
