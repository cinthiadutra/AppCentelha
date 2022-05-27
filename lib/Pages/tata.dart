
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import 'package:url_launcher/url_launcher.dart';

import '../themes/app_colors.dart';
import '../themes/app_images.dart';

class FaleComTata extends StatefulWidget {
  const FaleComTata({Key? key}) : super(key: key);

  @override
  _FaleComTataState createState() => _FaleComTataState();
}

class _FaleComTataState extends State<FaleComTata> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: Text(
          "Fale com o Tata",
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.43,
              color: AppColors.secondary,
            ),
            Positioned(
                top: 5,
                right: 30,
                child: Image.asset(
                  AppImages.tata3,
                  scale: 1.3,
                )),
            Positioned(
              bottom: size.height * 0.05,
              left: 0,
              right: 0,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 150, right: 100, left: 100, bottom: 20),
                      child: ElevatedButton(
                        onPressed: launchWhatsApp,
                        child: Row(children: [
                          SizedBox(
                            width: 20,
                          ),
                          FaIcon(FontAwesomeIcons.whatsapp),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "WHATSAPP",
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                      ),
                    ),
                    Image.asset(
                      AppImages.centelhaLogo,
                      scale: 3.9,
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }

  launchWhatsApp() async {
    // ignore: prefer_const_constructors
    final link = WhatsAppUnilink(
      phoneNumber: '+55-(21)985703566',
      text: "Fale com o Tata",
    );

    await launch('$link');
  }
}
