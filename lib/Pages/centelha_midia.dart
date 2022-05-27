
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../widget/drawer_ccu.dart';

class CentelhaMidia extends StatelessWidget {
  const CentelhaMidia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: Text("A centelha na Midia"),
        centerTitle: true,
      ),
      drawer: drawerCcu(context),
    );
  }
}
