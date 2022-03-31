import 'package:flutter/material.dart';

import '../../widgets/componentes/Imagem.dart';

/**
 * Descricao:> Constroe o logotipo do topo
 * Autor:> @salomaotech
 */
class LogoTopo extends StatefulWidget {
  /* propriedades */
  String _nomeEmpresa;
  String _sobre;

  /* construtor */
  LogoTopo(this._nomeEmpresa, this._sobre);

  @override
  _LogoTopoState createState() =>
      _LogoTopoState(this._nomeEmpresa, this._sobre);
}

/* classe que representa o estado */
class _LogoTopoState extends State<LogoTopo> {
  /* propriedades */
  String _nomeEmpresa;
  String _sobre;

  /* construtor */
  _LogoTopoState(this._nomeEmpresa, this._sobre);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(_nomeEmpresa),
      accountEmail: Text(_sobre),
      currentAccountPicture: CircleAvatar(
        child: Imagem("logo"),
      ),
    );
  }
}
