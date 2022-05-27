
import 'package:flutter/material.dart';

import '../Pages/calendario.dart';
import '../Pages/centelha_midia.dart';
import '../Pages/contatos.dart';
import '../Pages/dados_pessoais.dart';
import '../Pages/financeiro.dart';
import '../Pages/grupo_tarefa.dart';
import '../Pages/home_page.dart';
import '../Pages/informacoes_espirituais.dart';
import '../Pages/tata.dart';
import '../Pages/terreiro_infos.dart';
import '../models/lista_menu_model.dart';

ListaMenuApp(BuildContext context) {
  List<ListaMenuModel> menu = [];

  menu.add(
    ListaMenuModel(
      icon: Icons.home,
      texto: "Home",
      onTap: HomeCcu(),
    ),
  );
  menu.add(
    ListaMenuModel(
      icon: Icons.home,
      texto: "Home",
      onTap: HomeCcu(),
    ),
  );
  menu.add(
    ListaMenuModel(
      icon: Icons.person,
      texto: "Dados Pessoais",
      onTap: DadosPessoais(),
    ),
  );
  menu.add(ListaMenuModel(
    icon: Icons.monetization_on,
    texto: "Financeiro",
    onTap: Financeiro(),
  ));
  menu.add(ListaMenuModel(
    icon: Icons.calendar_today,
    texto: "Calendario",
    onTap: Calendario(),
  ));
  menu.add(ListaMenuModel(
    icon: Icons.star,
    texto: "Informações Epirituais",
    onTap: InformacoesEspirituais(),
  ));
  menu.add(ListaMenuModel(
    icon: Icons.design_services,
    texto: "Grupo Tarefa",
    onTap: GrupoTarefa(),
  ));
  menu.add(ListaMenuModel(
    icon: Icons.info,
    texto: "Informações Terreiro",
    onTap: TerreiroInfo(),
  ));
  menu.add(ListaMenuModel(
    icon: Icons.phone,
    texto: "Contatos",
    onTap: Contatos(),
  ));
  menu.add(ListaMenuModel(
    icon: Icons.face,
    texto: "Fale com o Tata",
    onTap: FaleComTata(),
  ));
  menu.add(ListaMenuModel(
    icon: Icons.videocam,
    texto: "A centelha na Midia",
    onTap: CentelhaMidia(),
  ));
  menu.add(ListaMenuModel(
    icon: Icons.exit_to_app,
    texto: "Sair",
    onTap: () {
      // final provider =
      //     Provider.of<GoogleSignInProvider>(context, listen: false);
      // provider.logout();
    },
  ));

  return menu;
}
