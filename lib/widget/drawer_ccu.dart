import 'package:flutter/material.dart';
import 'package:projetos/widget/text_label.dart';

import '../models/lista_menu_model.dart';
import '../themes/app_colors.dart';
import 'lista_menu.dart';
import 'nav.dart';

// ignore: use_key_in_widget_constructors
drawerCcu(BuildContext context) {
  List<ListaMenuModel> lista = ListaMenuApp(context);

  return Drawer(
    child: Wrap(children: [
      ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: lista.length,
          itemBuilder: (BuildContext context, int index) {
            // ignore: unused_local_variable
            List<ListaMenuModel> menu = [];
            if (index == 0) {
              return Container(
                height: 80,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                  ),
                  child: Row(
                    children: [
                      Align(
                        child: Image.asset(
                          "assets/images/centelha.png",
                          scale: 1.0,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "A centelha divina",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.only(top: 2),
              child: ListTile(
                title: TextLabel(
                  texto: lista[index].texto,
                ),
                onTap: () {
                  push(context, lista[index].onTap);
                },
                leading: Icon(lista[index].icon),
              ),
            );
          })
    ]),
  );
}
