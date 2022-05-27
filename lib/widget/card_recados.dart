import 'package:flutter/material.dart';

class Recados extends StatelessWidget {
  final String texto;
  final String autor;
  final String titulo;
  final String dataRecado;
  final Color? cor;
  const Recados({
    required this.texto,
    required this.autor,
    required this.titulo,
    required this.dataRecado,
    this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(200))),
        height: 200,
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              color: cor,
              elevation: 5,
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    titulo,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 8, bottom: 8),
                  child: Text(
                    "De: " + autor,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 1),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                  child: Center(
                    child: Text(
                      texto,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    dataRecado,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ])),
        ));
  }

  recadoprincipal() {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Text("Recados: ",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text.rich(TextSpan(
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              text: "ATENÇÃO TODOS")),
          Text.rich(
            TextSpan(
                style: TextStyle(fontSize: 16),
                text: "\n"
                    "Com a retomada dos nossos trabalhos, temos que relembrar que teremos sempre sessões ou alguma atividade realizada pelos pais/mães praticamente todos os dias da semana."
                    "Por este motivo é imprescindivel que ninguém entre no terreiro a partir de determinado horário sem que esteja sendo esperado para a sessão ou, nos dias que não tem sessão, sem autorização do Pai/mãe que costuma trabalhar naquele dia, já que poderá estar sendo realizado algum trabalho espiritual e a simples presença de alguém poderá atrapalha-lo."
                    "Sendo assim, vejam abaixo os pais/mães que vcs devem consultar e o horário máximo para estar no terreiro sem autorização:"),
          ),
          Text.rich(TextSpan(
              style: TextStyle(fontWeight: FontWeight.bold),
              text: "\n"
                  "3as feiras: Mãe Tina - 18h00,"
                  "\n"
                  "4as feiras: Mãe Rosi - 18h00"
                  "\n"
                  "5as feiras: Pai Sérgio - 18h00"
                  "\n"
                  "6as feiras: Tata Luís - 18h00"
                  "\n"
                  "Sábados: Mãe Alexandra - 16h30"
                  "\n"
                  "\n"
                  "Isso serve para todos, independente de estarem indo realizar atividade de grupo tarefa ou não.")),
        ]));
  }
}
