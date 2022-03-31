import 'package:flutter/material.dart';

import '../menu/MenuTopoEsquerdo.dart';
import '../menu/WidgetMenuTopo.dart';

/**
 * Descricao:> Constroe a home
 * Autor:> @salomaotech
 */
class Home extends StatelessWidget {
  /* propriedades */
  String _tituloApp;

  /* objetos */
  List<Widget> _conteudoCorpo;
  MenuTopoEsquerdo _menuTopo;

  /* construtor */
  Home(this._tituloApp, this._conteudoCorpo, this._menuTopo);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: this._tituloApp,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        drawer: WidgetMenuTopo(_menuTopo.items),
        appBar: AppBar(
          title: Text(this._tituloApp),
        ),
        body: ListView.builder(
          itemCount: _conteudoCorpo.length,
          itemBuilder: (context, index) {
            final item = _conteudoCorpo[index];
            return item;
          },
        ),
      ),
    );
  }
}
