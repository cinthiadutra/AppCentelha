import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../widget/drawer_ccu.dart';

class Financeiro extends StatelessWidget {
  const Financeiro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.secondary,
          title: Text("Financeiro"),
          centerTitle: true,
        ),
        drawer: drawerCcu(context),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Mensalidades",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 50,
                child: Card(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "2022",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(width: 10),
                        Text("Mes", style: TextStyle(fontSize: 20)),
                        SizedBox(width: 10),
                        Text("Status", style: TextStyle(fontSize: 20)),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.monetization_on,
                    color: Colors.green,
                  ),
                  SizedBox(width: 10),
                  Text("Janeiro", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Text("pago", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.monetization_on,
                    color: Colors.green,
                  ),
                  SizedBox(width: 10),
                  Text("fevereiro", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Text("pago", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.monetization_on,
                    color: Colors.green,
                  ),
                  SizedBox(width: 10),
                  Text("Março", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Text("pago", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.monetization_on,
                    color: Colors.green,
                  ),
                  SizedBox(width: 10),
                  Text("Abril", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Text("pago", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.monetization_on,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text("Maio", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Text("Vencido", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.monetization_on,
                    color: Colors.yellowAccent,
                  ),
                  SizedBox(width: 10),
                  Text("Junho", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Text("a pagar", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Icon(
                    Icons.monetization_on,
                    color: Colors.yellowAccent,
                  ),
                  SizedBox(width: 10),
                  Text("Julho", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Text("a pagar", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ]));
  }
}
