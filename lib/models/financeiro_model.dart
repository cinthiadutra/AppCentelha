// To parse this JSON data, do
//
//     final FinanceiroModel2021 = FinanceiroModel2021FromMap(jsonString);

import 'dart:convert';

class FinanceiroModel {
  FinanceiroModel({
    required this.cpf,
    required this.nome,
    required this.status,
    this.anosAnteriores,
    this.janeiro,
    this.feveiro,
    this.marco,
    this.abril,
    this.maio,
    this.junho,
    this.julho,
    this.agosto,
    this.setembro,
    this.outubro,
    this.novembro,
    this.dezembro,
  });

  String cpf;
  String nome;
  bool status;
  String? anosAnteriores;
  String? janeiro;
  String? feveiro;
  String? marco;
  String? abril;
  String? maio;
  String? junho;
  String? julho;
  String? agosto;
  String? setembro;
  String? outubro;
  String? novembro;
  String? dezembro;

  factory FinanceiroModel.fromJson(String str) =>
      FinanceiroModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FinanceiroModel.fromMap(Map<String, dynamic> json) => FinanceiroModel(
        cpf: json["cpf"] == null ? null : json["cpf"],
        nome: json["nome"] == null ? null : json["nome"],
        status: json["status"] == null ? null : json["status"],
        anosAnteriores:
            json["anosAnteriores"] == null ? null : json["anosAnteriores"],
        janeiro: json["janeiro"] == null ? null : json["janeiro"],
        feveiro: json["feveiro"] == null ? null : json["feveiro"],
        marco: json["marco"] == null ? null : json["marco"],
        abril: json["abril"] == null ? null : json["abril"],
        maio: json["maio"] == null ? null : json["maio"],
        junho: json["junho"] == null ? null : json["junho"],
        julho: json["julho"] == null ? null : json["julho"],
        agosto: json["agosto"] == null ? null : json["agosto"],
        setembro: json["setembro"] == null ? null : json["setembro"],
        outubro: json["outubro"] == null ? null : json["outubro"],
        novembro: json["novembro"] == null ? null : json["novembro"],
        dezembro: json["dezembro"] == null ? null : json["dezembro"],
      );

  Map<String, dynamic> toMap() => {
        // ignore: unnecessary_null_comparison
        "cpf": cpf == null ? null : cpf,
        // ignore: unnecessary_null_comparison
        "nome": nome == null ? null : nome,
        // ignore: unnecessary_null_comparison
        "status": status == null ? null : status,
        "anosAnteriores": anosAnteriores == null ? null : anosAnteriores,
        "janeiro": janeiro == null ? null : janeiro,
        "feveiro": feveiro == null ? null : feveiro,
        "marco": marco == null ? null : marco,
        "abril": abril == null ? null : abril,
        "maio": maio == null ? null : maio,
        "junho": junho == null ? null : junho,
        "julho": julho == null ? null : julho,
        "agosto": agosto == null ? null : agosto,
        "setembro": setembro == null ? null : setembro,
        "outubro": outubro == null ? null : outubro,
        "novembro": novembro == null ? null : novembro,
        "dezembro": dezembro == null ? null : dezembro,
      };
}
