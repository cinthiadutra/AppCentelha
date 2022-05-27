
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../widget/drawer_ccu.dart';

class GrupoTarefa extends StatelessWidget {
  const GrupoTarefa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: Text("Grupo Tarefa"),
        centerTitle: true,
      ),
      drawer: drawerCcu(context),
    );
  }
}
