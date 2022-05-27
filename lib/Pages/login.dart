// ignore: unused_import
import 'package:brasil_fields/brasil_fields.dart';

import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../widget/button_google.dart';
import '../widget/logo.dart';
import 'cadastro_page.dart';
import 'home_page.dart';

class LoginCcu extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: ListView(children: [
          Container(height: 250, child: Logo()),
          Container(
              width: double.maxFinite,
              // height: 500,
              child: Form(
                key: _formKey,
                child:
                    ListView(shrinkWrap: true, scrollDirection: Axis.vertical,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textAlign: TextAlign.center,
                          maxLength: 50,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: AppColors.primary,
                            labelText: "Digite seu email",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "email invalido";
                            }
                            return null;
                          },
                          onSaved: (input) => _email = input!,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Digite sua senha",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "senha invalida";
                            }
                            return null;
                          },
                          onSaved: (input) => _password = input!,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          left: 70,
                          right: 70,
                        ),
                        child: ElevatedButton(
                            child: Text(
                              "Entrar",
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                print(_email);
                                print(_password);

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeCcu()));
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Hello!')));
                              }
                            }),
                      ),
                      Container(child: ButtonCcu()),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextButton(
                          child: Text(
                            "Cadastrar",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CadastroCcu(),
                              )),
                        ),
                      ),
                    ]),
              ))
        ]));
  }
}
