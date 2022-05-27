
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../blocs/centelha_bloc.dart';
import '../themes/app_colors.dart';
import '../widget/drawer_ccu.dart';
import 'dados_espirituais.dart';

class InformacoesEspirituais extends StatelessWidget {
  const InformacoesEspirituais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: Text("Informações Espirituais"),
        centerTitle: true,
      ),
      drawer: drawerCcu(context),
      body: SafeArea(
        child: Container(
          child: Consumer<CentelhaBloc>(
            builder: (context, _centelhaBloc, _) {
              return Container(
                child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                  return DetalhesEspirituais(
                    nome: _centelhaBloc.listaDeDados[index].nome,
                    funcao: _centelhaBloc.listaDeDados[index].cpf.toString(),
                    diaDeSessao: _centelhaBloc.listaDeDados[index].diaDeSessao,
                    classificacao:
                        _centelhaBloc.listaDeDados[index].classificacao,
                    grupoTrabalho:
                        _centelhaBloc.listaDeDados[index].grupoTrabalho,
                    jogou: _centelhaBloc.listaDeDados[index].jogou,
                    adjunto1:
                        _centelhaBloc.listaDeDados[index].adjunto1.toString(),
                    adjunto2:
                        _centelhaBloc.listaDeDados[index].adjunto2.toString(),
                    orixa1: _centelhaBloc.listaDeDados[index].orixa1.toString(),
                    orixa2: _centelhaBloc.listaDeDados[index].orixa2.toString(),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
