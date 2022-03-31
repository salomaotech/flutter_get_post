import 'package:projeto_integrador/resources/components/LogoTopo.dart';
import 'package:projeto_integrador/resources/templates/TelaCadastro.dart';
import 'package:projeto_integrador/resources/templates/TelaHome.dart';
import 'package:projeto_integrador/widgets/menu/MenuTopoEsquerdo.dart';
import 'package:flutter/material.dart';

import '../templates/TelaResultados.dart';

/**
 * Descricao:> Constroe o menu do topo
 * Autor:> @salomaotech
 */
class MenuTopo extends MenuTopoEsquerdo {
  /* sobreescreve o construtor para entregar o menu montado */
  @override
  MenuTopo() {
    addItemWidgetComum(LogoTopo("Salomão Silva", "@salomaotech"));
    addItemRota(TelaHome(), "Home", Icons.add_to_home_screen);
    addItemRota(TelaCadastro(), "Cadastro", Icons.edit);
    addItemRota(TelaResultados(), "Resultados", Icons.search);
  }
}
