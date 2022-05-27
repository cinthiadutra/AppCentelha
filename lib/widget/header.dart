import 'package:flutter/material.dart';

import '../themes/app_images.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(children: [
        Image.asset(
          AppImages.centelhaLogo,
          scale: 16.0,
        ),
        SizedBox(
          width: 10,
        ),
        Image.network(
          "https://static.wixstatic.com/media/0e316a_ff281a9afaf746d1b5f6abfb0ecb2820.jpg/v1/fill/w_440,h_112,al_c,q_80,usm_0.66_1.00_0.01/0e316a_ff281a9afaf746d1b5f6abfb0ecb2820.webp",
          scale: 2,
        ),
      ]),
    );
  }
}
