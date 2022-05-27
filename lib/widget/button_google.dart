import 'package:flutter/material.dart';
import 'package:projetos/Pages/home_page.dart';
import 'package:projetos/themes/app_colors.dart';

import 'package:provider/provider.dart';

import '../controllers/login_controller.dart';

class ButtonCcu extends StatelessWidget {
  const ButtonCcu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 8),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.redAccent,
            textStyle: TextStyle(color: Colors.white),
          ),
          child: Row(
            children: [
              Icon(
                Icons.g_mobiledata_sharp,
                size: 24,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Entrar com Google",
                style: TextStyle(fontSize: 14, color: Colors.white),
              )
            ],
          ),
          onPressed: () {
            HomeCcu();
          }),
    );
  }
}
