import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../themes/app_colors.dart';
import '../widget/drawer_ccu.dart';

class Calendario extends StatelessWidget {
  const Calendario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: Text("Calendário de Atividades"),
        centerTitle: true,
      ),
      drawer: drawerCcu(context),
      body: ListView(children: [
        Container(
            height: 300,
            width: 600,
            child: PhotoView(
              imageProvider: AssetImage(
                "assets/images/calendario.jpg",
              ),
            )),
      ]),
    );
  }
}
