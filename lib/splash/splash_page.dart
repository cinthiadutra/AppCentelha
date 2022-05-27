
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projetos/Pages/login.dart';

import '../themes/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginCcu()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              child: Image.asset(
                AppImages.centelhaLogo,
                scale: 5.5,
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Center(
            child: Container(
              child: Image.network(
                "https://cdn-az.allevents.in/events3/banners/708c2c8593efdff0e82492a49f6e5c39cc0dac9e6067db686906fa9563789d1c-rimg-w400-h400-gmir.png?v=1583403490",
                scale: 2.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
