import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../themes/app_colors.dart';
import '../widget/drawer_ccu.dart';

class Contatos extends StatelessWidget {
  const Contatos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
        centerTitle: true,
        backgroundColor: AppColors.secondary,
      ),
      drawer: drawerCcu(context),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          color: AppColors.background,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Image.asset(
                  "assets/images/ccu.jpeg",
                  scale: 3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Card(
                    child: ListTile(
                  leading: Icon(Icons.phone_android),
                  title: Text("(21) 98256-0826"),
                  onTap: fazerLigacaoCel,
                )),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                  child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("(21) 2290-1591"),
                onTap: fazerLigacao,
              )),
              SizedBox(
                height: 5,
              ),
              Card(
                  child: ListTile(
                leading: Icon(Icons.email),
                title: Text("acentelhadivina@gmail.com"),
                onTap: abrirGmail,
              )),
              SizedBox(
                height: 5,
              ),
              Card(
                  child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Rua João Rego 265, olaria , Rio de Janeiro"),
                onTap: abrirGoogleMaps,
              )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    child: Icon(
                      Icons.facebook,
                      size: 50,
                      color: Colors.blue,
                    ),
                    onTap: abrirFace,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    child: Image.asset(
                      "assets/images/centelha.png",
                      scale: 20.0,
                    ),
                    onTap: abrirUrl,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

launchWhatsApp() async {
  // ignore: prefer_const_constructors
  final link = WhatsAppUnilink(
    phoneNumber: '+55-(21)982560826',
    text: "Fale com o Tata",
  );

  await launch('$link');
}

abrirUrl() async {
  const url = 'https://acentelhadivina.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

abrirFace() async {
  const url = 'http://www.facebook.com/casadocabocloUbirajara';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

abrirGmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'acentelhadivina@gmail.com',
    query: 'subject=Reportar&body=Detalhe aqui qual sua mensagem: ',
  );
  String url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch $url');
  }
}

abrirGoogleMaps() async {
  const urlMap = "4PXH+37 Olaria, Rio de Janeiro - RJ";
  if (await canLaunch(urlMap)) {
    await launch(urlMap);
  } else {
    throw 'Could not launch Maps';
  }
}

fazerLigacaoCel() async {
  const url = "tel:982560826";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

fazerLigacao() async {
  const url = "tel:2122901591";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
