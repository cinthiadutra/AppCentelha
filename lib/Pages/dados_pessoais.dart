import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../widget/drawer_ccu.dart';

class DadosPessoais extends StatelessWidget {
  const DadosPessoais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: Text("Dados Pessoais"),
        centerTitle: true,
      ),
      drawer: drawerCcu(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: AppColors.background,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        "Nucleo:",
                        style: TextStyle(
                            color: AppColors.secondary,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "assets/images/ccu.jpeg",
                        scale: 3,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Card(
                      child: ListTile(
                    leading: Icon(
                      Icons.person,
                    ),
                    subtitle: Text(
                      "Cinthia Dutra",
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Text(
                      "Nome Completo",
                      style: TextStyle(fontSize: 10),
                    ),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: ListTile(
                      leading: Icon(Icons.document_scanner_rounded),
                      subtitle: Text(
                        "115.393.617-80",
                        style: TextStyle(fontSize: 16),
                      ),
                      title: Text(
                        "CPF",
                        style: TextStyle(fontSize: 10),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: ListTile(
                      leading: Icon(Icons.calendar_today),
                      subtitle: Text(
                        "16/05/1986",
                        style: TextStyle(fontSize: 16),
                      ),
                      title: Text(
                        "Data de nascimento",
                        style: TextStyle(fontSize: 10),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: ListTile(
                      leading: Icon(Icons.home_repair_service),
                      subtitle: Text(
                        "Medium",
                        style: TextStyle(fontSize: 16),
                      ),
                      title: Text(
                        "Função",
                        style: TextStyle(fontSize: 10),
                      )),
                ),
                Card(
                  child: ListTile(
                      leading: Icon(Icons.email),
                      subtitle: Text(
                        "cinthiadutra@gmail.com",
                        style: TextStyle(fontSize: 16),
                      ),
                      title: Text(
                        "Email",
                        style: TextStyle(fontSize: 10),
                      )),
                ),
                Card(
                  child: ListTile(
                      leading: Icon(Icons.phone_android),
                      subtitle: Text(
                        "(21)99900-5171",
                        style: TextStyle(fontSize: 16),
                      ),
                      title: Text(
                        "Celular",
                        style: TextStyle(fontSize: 10),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
