import 'package:flutter/material.dart';

class CardCcu extends StatelessWidget {
  final icon;
  final texto;
  final subtexto;
  const CardCcu({ Key? key, this.icon, this.texto, this.subtexto }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
              child: ListTile(
            leading: icon,
            title: texto,
            subtitle: subtexto,
          
          ));
      
    
  }
}