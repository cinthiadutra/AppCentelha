// To parse this JSON data, do
//
//     final DadosModel
// = DadosModel
// FromMap(jsonString);

import 'dart:convert';

class DadosModel {
  DadosModel({
    required this.nome,
    this.cpf,
    required this.nasc,
    required this.idade,
    required this.situacao,
    required this.funcao,
    required this.diaDeSessao,
    required this.ritoPassagem,
    this.batismo,
    this.camarinha,
    this.jogoBuzios,
    this.camarinha2,
    required this.classificacao,
    required this.grupoTarefa,
    required this.grupoTrabalho,
    this.orixa1,
    this.adjunto1,
    this.orixa2,
    this.adjunto2,
    required this.jogou,
  });

  String nome;
  String? cpf;
  DateTime? nasc;
  String idade;
  String situacao;
  String funcao;
  String diaDeSessao;
  DateTime? ritoPassagem;
  DateTime? batismo;
  DateTime? camarinha;
  DateTime? jogoBuzios;
  DateTime? camarinha2;
  String classificacao;
  String grupoTarefa;
  String grupoTrabalho;
  String? orixa1;
  String? adjunto1;
  String? orixa2;
  String? adjunto2;
  String jogou;

  factory DadosModel.fromJson(String str) =>
      DadosModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DadosModel.fromMap(Map<String, dynamic> json) => DadosModel(
        nome: json["nome"] == null ? null : json["nome"],
        cpf: json["cpf"] == null ? null : json["cpf"],
        nasc: json["nasc"] == null ? null : DateTime.parse(json["nasc"]),
        idade: json["idade"] == null ? null : json["idade"],
        situacao: json["situacao"] == null ? null : json["situacao"],
        funcao: json["funcao"] == null ? null : json["funcao"],
        diaDeSessao:
            json["dia de sessao"] == null ? null : json["dia de sessao"],
        ritoPassagem: json["rito passagem"] == null
            ? null
            : DateTime.parse(json["rito passagem"]),
        batismo:
            json["batismo"] == null ? null : DateTime.parse(json["batismo"]),
        camarinha: json["camarinha"] == null
            ? null
            : DateTime.parse(json["camarinha"]),
        jogoBuzios: json["jogo buzios"] == null
            ? null
            : DateTime.parse(json["jogo buzios"]),
        camarinha2: json["camarinha 2"] == null
            ? null
            : DateTime.parse(json["camarinha 2"]),
        classificacao:
            json["classificacao"] == null ? null : json["classificacao"],
        grupoTarefa: json["grupo-tarefa"] == null ? null : json["grupo-tarefa"],
        grupoTrabalho: json["resumo"] == null ? null : json["resumo"],
        orixa1: json["orixa 1"] == null ? null : json["orixa 1"],
        adjunto1: json["adjunto 1"] == null ? null : json["adjunto 1"],
        orixa2: json["orixa 2"] == null ? null : json["orixa 2"],
        adjunto2: json["adjunto 2"] == null ? null : json["adjunto 2"],
        jogou: json["jogou"] == null ? null : json["jogou"],
      );

  Map<String, dynamic> toMap() => {
        // ignore: unnecessary_null_comparison
        "nome": nome == null ? null : nome,
        "cpf": cpf == null ? null : cpf,
        "nasc": nasc == null
            ? null
            : "${nasc!.year.toString().padLeft(4, '0')}-${nasc!.month.toString().padLeft(2, '0')}-${nasc!.day.toString().padLeft(2, '0')}",
        // ignore: unnecessary_null_comparison
        "idade": idade == null ? null : idade,
        // ignore: unnecessary_null_comparison
        "situacao": situacao == null ? null : situacao,
        // ignore: unnecessary_null_comparison
        "funcao": funcao == null ? null : funcao,
        // ignore: unnecessary_null_comparison
        "dia de sessao": diaDeSessao == null ? null : diaDeSessao,
        "rito passagem": ritoPassagem == null
            ? null
            : "${ritoPassagem!.year.toString().padLeft(4, '0')}-${ritoPassagem!.month.toString().padLeft(2, '0')}-${ritoPassagem!.day.toString().padLeft(2, '0')}",
        "batismo": batismo == null
            ? null
            : "${batismo!.year.toString().padLeft(4, '0')}-${batismo!.month.toString().padLeft(2, '0')}-${batismo!.day.toString().padLeft(2, '0')}",
        "camarinha": camarinha == null
            ? null
            : "${camarinha!.year.toString().padLeft(4, '0')}-${camarinha!.month.toString().padLeft(2, '0')}-${camarinha!.day.toString().padLeft(2, '0')}",
        "jogo buzios": jogoBuzios == null
            ? null
            : "${jogoBuzios!.year.toString().padLeft(4, '0')}-${jogoBuzios!.month.toString().padLeft(2, '0')}-${jogoBuzios!.day.toString().padLeft(2, '0')}",
        "camarinha 2": camarinha2 == null
            ? null
            : "${camarinha2!.year.toString().padLeft(4, '0')}-${camarinha2!.month.toString().padLeft(2, '0')}-${camarinha2!.day.toString().padLeft(2, '0')}",
        // ignore: unnecessary_null_comparison
        "classificacao": classificacao == null ? null : classificacao,
        // ignore: unnecessary_null_comparison
        "grupo-tarefa": grupoTarefa == null ? null : grupoTarefa,
        // ignore: unnecessary_null_comparison
        "grupoTrabalho": grupoTrabalho == null ? null : grupoTrabalho,
        "orixa 1": orixa1 == null ? null : orixa1,
        "adjunto 1": adjunto1 == null ? null : adjunto1,
        "orixa 2": orixa2 == null ? null : orixa2,
        "adjunto 2": adjunto2 == null ? null : adjunto2,
        // ignore: unnecessary_null_comparison
        "jogou": jogou == null ? null : jogou,
      };
}
