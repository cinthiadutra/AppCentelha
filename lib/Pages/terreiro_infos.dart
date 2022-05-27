
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../widget/drawer_ccu.dart';

class TerreiroInfo extends StatelessWidget {
  const TerreiroInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: Text(" Informações do Terreiro"),
        centerTitle: true,
      ),
      drawer: drawerCcu(context),
    );
  }
}
