import 'package:flutter/material.dart';

Future push(BuildContext context, Widget page, {bool replace = false}) {
  if (replace) {
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return page;
      }),
    );
  }
  return Navigator.push(context,
      new MaterialPageRoute(builder: (BuildContext context) {
    return page;
  }));
}

pop<T extends Object>(BuildContext context, [T? result]) {
  return Navigator.pop(context);
}

Future pushReplace(BuildContext context, Widget page, {bool refresh = false}) {
  print(ModalRoute.of(context)!.settings.name);
  String? pageAtual = ModalRoute.of(context)!.settings.name;
  String pageProxima = page.toString();
  print("Atual   : $pageAtual");
  print("Proxima : $pageProxima");

  // if (refresh == true || pageAtual != pageProxima) {
  return Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
        builder: (BuildContext context) => page,
        settings: RouteSettings(name: page.toString())),
    (route) => false,
  );
  // }
}

// Navigator.push(context,
// new MaterialPageRoute(builder: (context) => ExtratoContainer()));