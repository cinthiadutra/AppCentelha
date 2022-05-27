
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/login_controller.dart';
import '../themes/app_colors.dart';
import '../widget/card_recados.dart';
import '../widget/carrosel.dart';
import '../widget/drawer_ccu.dart';
import '../widget/header.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              // final provider = Provider.of<GoogleSignInProvider>(context);
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Card(
                    child: Text("Ocorreu um erro não esperado"),
                  ),
                );
              } else {
                return HomeCcu();
              }
            }),
      ),
    );
  }
}

class HomeCcu extends StatefulWidget {
  @override
  State<HomeCcu> createState() => _HomeCcuState();
}

class _HomeCcuState extends State<HomeCcu> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pagina Inicial",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: AppColors.secondary,
      ),
      drawer: drawerCcu(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Header(),
              Carrosel(),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recados: ",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Recados(
                      cor: Colors.lightBlue,
                      texto:
                          "Proibido permanencia no terreiro apos as 18hr, caso precise procure o resonsavel pelo dia",
                      autor: "Tata",
                      titulo: "Importante",
                      dataRecado: "17/07/2021"),
                  Recados(
                      cor: Colors.lightGreen,
                      texto:
                          "Evite pagar juros, mantenha suas mensalidades em dia.",
                      autor: "Financeiro",
                      titulo: "Fique em dia",
                      dataRecado: "19/07/2021"),
                  Recados(
                      cor: Colors.yellow[200],
                      texto:
                          "Caso tenha alteração nos seus dados cadastrais, procure a secretaria para atualizar",
                      autor: "Secretaria",
                      titulo: "aviso",
                      dataRecado: "18/07/2021"),
                  Recados(
                      texto:
                          "Ajude a quem precisa, precisamos de mantimentos pereciveis para nossas doações",
                      autor: "Grupo social",
                      titulo: "Lista de doações",
                      dataRecado: "17/07/2021"),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
