
import 'package:flutter/material.dart';

import '../widget/text_label.dart';

class DetalhesEspirituais extends StatelessWidget {
  String nome;
  String funcao;
  String diaDeSessao;
  // DateTime ritoPassagem;
  // DateTime batismo;
  // DateTime camarinha;
  // DateTime jogoBuzios;
  // DateTime camarinha2;
  String classificacao;
  String grupoTrabalho;
  String orixa1;
  String adjunto1;
  String orixa2;
  String adjunto2;
  String jogou;
  DetalhesEspirituais({
    Key? key,
    required this.nome,
    required this.funcao,
    required this.diaDeSessao,
    // required this.ritoPassagem,
    // required this.batismo,
    // required this.camarinha,
    // required this.jogoBuzios,
    // required this.camarinha2,
    required this.classificacao,
    required this.grupoTrabalho,
    required this.orixa1,
    required this.adjunto1,
    required this.orixa2,
    required this.adjunto2,
    required this.jogou,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextLabel(
              texto: nome,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextLabel(
                    texto: funcao,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextLabel(
                          texto: diaDeSessao,
                        ),
                      ),
                      // Padding(
                      //     padding: const EdgeInsets.all(15.0),
                      //     child: Column(children: [
                      //       Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: TextLabel(
                      //           texto: ritoPassagem ,
                      //         ),
                      //       ),
                      Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextLabel(
                                texto: jogou,
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextLabel(
                                      texto: grupoTrabalho,
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextLabel(
                                            texto: orixa1,
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                                const EdgeInsets.all(15.0),
                                            child: Column(children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextLabel(
                                                  texto: orixa2,
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.all(
                                                          15.0),
                                                  child: Column(children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets
                                                              .all(8.0),
                                                      child: TextLabel(
                                                        texto: adjunto1,
                                                      ),
                                                    ),
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .all(
                                                                      8.0),
                                                              child:
                                                                  TextLabel(
                                                                texto:
                                                                    adjunto2,
                                                              ),
                                                            ),
                                                            // Padding(
                                                            // padding: const EdgeInsets.all(15.0),
                                                            // child: Column(
                                                            //   children: [
                                                            //     Padding(
                                                            //       padding: const EdgeInsets.all(8.0),
                                                            //       child: TextLabel(
                                                            //         texto: nome ?? "",
                                                            //       ),
                                                            //     ),Padding(
                                                            // padding: const EdgeInsets.all(15.0),
                                                            // child: Column(
                                                            //   children: [
                                                            //     Padding(
                                                            //       padding: const EdgeInsets.all(8.0),
                                                            //       child: TextLabel(
                                                            //         texto: nome ?? "",
                                                            //       ),
                                                            //     ),Padding(
                                                            // padding: const EdgeInsets.all(15.0),
                                                            // child: Column(
                                                            //   children: [
                                                            //     Padding(
                                                            //       padding: const EdgeInsets.all(8.0),
                                                            //       child: TextLabel(
                                                            //         texto: nome ?? "",
                                                            //       ),
                                                            //     ),Padding(
                                                            // padding: const EdgeInsets.all(15.0),
                                                            // child: Column(
                                                            //   children: [
                                                            //     Padding(
                                                            //       padding: const EdgeInsets.all(8.0),
                                                            //       child: TextLabel(
                                                            //         texto: nome ?? "",
                                                            //       ),
                                                            //     ),Padding(
                                                            // padding: const EdgeInsets.all(15.0),
                                                            // child: Column(
                                                            //   children: [
                                                            //     Padding(
                                                            //       padding: const EdgeInsets.all(8.0),
                                                            //       child: TextLabel(
                                                            //         texto: nome ?? "",
                                                            //       ),
                                                            //     ),Padding(
                                                            // padding: const EdgeInsets.all(15.0),
                                                            // child: Column(
                                                            //   children: [
                                                            //     Padding(
                                                            //       padding: const EdgeInsets.all(8.0),
                                                            //       child: TextLabel(
                                                            //         texto: nome ?? "",
                                                            //       ),
                                                            //     ),
                                                          ],
                                                        ))
                                                  ]))
                                            ]))
                                      ]))
                                ]))
                          ]))
                    ]))
              ]))
        ]));
  }
}
