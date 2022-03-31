import 'package:projeto_integrador/modelo/RecebeDaosGet.dart';
import "package:flutter/material.dart";

import '../../widgets/componentes/EspacoEntreElemento.dart';
import '../../widgets/home/Home.dart';
import '../components/MenuTopo.dart';

/**
 * Descricao:> Tela de resultados
 * Autor:> @salomaotech
 */
class TelaResultados extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EstadoWidget();
  }
}

class EstadoWidget extends State<TelaResultados> {
  /* campo de saida */
  Text _saidaCampo = new Text("");

  /* url de recebimento */
  String _urlRecebe = "https://taimber.com/network/simula_api/mock/get/";

  /* imagem de rede */
  Image image = Image.asset("assets/imagens/logo.png");

  @override
  Widget build(BuildContext context) {
    /* widgets da home */
    List<Widget> items = <Widget>[];

    /* popula objetos */
    items.add(EspacoEntreElemento(0, 5));
    items.add(image);

    /* popula objetos */
    items.add(_saidaCampo);
    items.add(EspacoEntreElemento(0, 5));

    /* adiciona o botão de cadastro */
    items.add(
      TextButton(
        child: Text(
          "Me mostre!",
          style: TextStyle(fontSize: 22.0),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.green,
          primary: Colors.white,
          padding: EdgeInsets.all(10.0),
        ),
        onPressed: () {
          _receber();
        },
      ),
    );

    /* retorna a home */
    return Home("Resultados", items, MenuTopo());
  }

  /* recebe os dados */
  Future _receber() async {
    /* excessão */
    try {
      /* resultados */
      final resultadosResposta =
          await RecebeDadosGet.fetchDados(url: _urlRecebe);

      /* resultado */
      String resultado = "";
      resultado += "Nome: " + resultadosResposta.nome + "\n";
      resultado += "Telefone: " + resultadosResposta.telefone + "\n";
      resultado += "Endereço: " + resultadosResposta.endereco + "\n";

      /* url da minha foto */
      String foto = resultadosResposta.foto;

      /* atualiza o stado quando terminar de pegar os dados */
      setState(() {
        /* exibe a imagem */
        image = Image.network(foto);

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
