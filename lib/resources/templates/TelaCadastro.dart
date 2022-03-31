import "package:flutter/material.dart";

import '../../modelo/EnviaDadosPost.dart';
import "../../widgets/componentes/CampoEntrada.dart";
import '../../widgets/componentes/EspacoEntreElemento.dart';
import '../../widgets/home/Home.dart';
import '../components/MenuTopo.dart';

/**
 * Descricao:> Tela de cadastro
 * Autor:> @salomaotech
 */

class TelaCadastro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    /* EstadoWidget */
    return EstadoWidget();
  }
}

class EstadoWidget extends State<TelaCadastro> {
  /* campos de entrada entrada e saida */
  CampoEntrada _entradaNome = new CampoEntrada("Nome", 22.0);
  CampoEntrada _entradaTelefone = new CampoEntrada("Telefone", 22.0);
  CampoEntrada _entradaEndereco = new CampoEntrada("Endereço", 22.0);
  Text _saidaCampo = new Text("");

  /* url de envio */
  String _urlEnvio = "https://taimber.com/network/simula_api/mock/post/";

  @override
  Widget build(BuildContext context) {
    /* widgets da home */
    List<Widget> items = <Widget>[];

    /* popula objetos */
    items.add(_entradaNome);
    items.add(EspacoEntreElemento(0, 10));
    items.add(_entradaTelefone);
    items.add(EspacoEntreElemento(0, 10));
    items.add(_entradaEndereco);
    items.add(EspacoEntreElemento(0, 30));

    /* adiciona o botão de cadastro */
    items.add(
      TextButton(
        child: Text(
          "Cadastrar",
          style: TextStyle(fontSize: 22.0),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.green,
          primary: Colors.white,
          padding: EdgeInsets.all(10.0),
        ),
        onPressed: () {
          _enviar();
        },
      ),
    );

    /* popula objetos */
    items.add(_saidaCampo);
    items.add(EspacoEntreElemento(0, 30));

    /* retorna a home */
    return Home("Cadastro", items, MenuTopo());
  }

  /* envia os dados */
  Future _enviar() async {
    /* excessão */
    try {
      /* resultados */
      final resultadosResposta = await EnviaDadosPost.fetchDados(
          url: _urlEnvio +
              "?nome=" +
              _entradaNome.controller.text +
              "&telefone=" +
              _entradaTelefone.controller.text +
              "&endereco=" +
              _entradaEndereco.controller.text);

      /* resultado */
      String resultado = "";
      resultado += "Resposta: " + resultadosResposta.resposta + "\n";

      /* atualiza o stado quando terminar de pegar os dados */
      setState(() {
        /* objeto de campo de saida Text */
        _saidaCampo = new Text(
          resultado,
          style: TextStyle(fontSize: 22.0),
        );
      });
    } catch (_) {
      /* atualiza o stado quando terminar de pegar os dados */
      setState(() {
        /* objeto de campo de saida Text */
        _saidaCampo = new Text(
          "Ops!",
          style: TextStyle(fontSize: 22.0),
        );
      });
    }
  }
}
