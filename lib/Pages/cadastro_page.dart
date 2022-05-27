import 'dart:convert';

import 'package:brasil_fields/brasil_fields.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/cadastro_model.dart';
import '../widget/botton_loading.dart';

// ignore: must_be_immutable
class CadastroCcu extends StatefulWidget {
// ignore: deprecated_member_use
  var cadastros = <CadastroModel>[];

  CadastroCcu() {
    cadastros = [];
  }

  @override
  _CadastroCcuState createState() => _CadastroCcuState();
}

class _CadastroCcuState extends State<CadastroCcu> {
  final _nomecontroller = TextEditingController();

  final _cpfcontroller = TextEditingController();

  final _emailcontroller = TextEditingController();

  final _senhacontroller = TextEditingController();

  final _celularcontroller = TextEditingController();
  var busy = false;

  get cadastros => null;

  void Cadastrar() {
    if (_nomecontroller.text.isEmpty &&
        _cpfcontroller.text.isEmpty &&
        _emailcontroller.text.isEmpty &&
        _celularcontroller.text.isEmpty &&
        _senhacontroller.text.isEmpty) return;
    setState(() {
      widget.cadastros.add(CadastroModel(
          nome: _nomecontroller.text,
          cpf: _cpfcontroller.text,
          celular: _celularcontroller.text,
          email: _emailcontroller.text,
          senha: _senhacontroller.text));
      _nomecontroller.clear();
      _cpfcontroller.clear();
      _celularcontroller.clear();
      _emailcontroller.clear();
      _senhacontroller.clear();
      save();
      AlertDialog(
        title: Text("Atenção"),
      );
    });
  }

  Future load() async {
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString('data');

    if (data != null) {
      Iterable decoded = jsonDecode(data);
      List<CadastroModel> result =
          decoded.map((e) => CadastroModel.fromJson(e)).toList();
      setState(() {
        widget.cadastros = result;
      });
    }
  }

  Future save() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString("data", jsonEncode(widget.cadastros));
  }

  _CadastroCcuState() {
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro App"),
        ),
        body: Form(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          child: ListView(children: [
            Container(
              height: 150,
              child: Image.asset(
                "assets/images/centelha.png",
                scale: 5.5,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              maxLength: 50,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nome Completo",
              ),
              controller: _nomecontroller,
              keyboardType: TextInputType.text,
            ),
            TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CpfInputFormatter(),
                ],
                maxLength: 15,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "CPF",
                ),
                controller: _cpfcontroller,
                keyboardType: TextInputType.number),
            TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  TelefoneInputFormatter(),
                ],
                maxLength: 14,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Celular",
                ),
                controller: _celularcontroller,
                keyboardType: TextInputType.number),
            TextFormField(
                maxLength: 50,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
                controller: _emailcontroller,
                keyboardType: TextInputType.emailAddress),
            TextFormField(
                obscureText: true,
                maxLength: 6,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Senha",
                ),
                controller: _senhacontroller,
                keyboardType: TextInputType.number),
            LoadingButton(
              busy: busy,
              func: save,
              invert: false,
              text: "Cadastrar",
            )
          ]),
        )));
  }
}

//() => Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => HomeCcu(),
              //   ),
              // )