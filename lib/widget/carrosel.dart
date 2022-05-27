import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Carrosel extends StatefulWidget {
  const Carrosel({Key? key}) : super(key: key);

  @override
  _CarroselState createState() => _CarroselState();
}

class _CarroselState extends State<Carrosel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        InkWell(
          onTap: abrirEad,
          child: Image.network(
              "https://static.wixstatic.com/media/0e316a_da4a3f0bf820468b959f0e1a2ece46f4~mv2.jpg/v1/fill/w_353,h_398,al_c,q_80,usm_0.66_1.00_0.01/TAROT%20ON-LINE.webp",
              scale: 1.5),
        ),
        InkWell(
          onTap: abrirYoutube,
          child: Image.network(
            "https://static.wixstatic.com/media/0e316a_d4af4194c1cf4b9da959dbd22b024ff8~mv2.jpg/v1/fill/w_337,h_278,al_c,q_80,usm_0.66_1.00_0.01/chamada.webp",
            scale: 1.0,
          ),
        )
      ],
      options: CarouselOptions(
        height: 350,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 1500),
        autoPlayCurve: Curves.ease,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  abrirEad() async {
    const url = 'https://acentelhadivina.ead.guru/cursos/tarot-cabalistico/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  abrirYoutube() async {
    const url = 'https://youtube.com/acentelhadivina/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
