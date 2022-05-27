
import 'package:flutter/cupertino.dart';

import '../models/cadastro_model.dart';
import '../models/financeiro_model.dart';
import '../models/meus_dados_model.dart';
import '../services/service_centelha.dart';

class CentelhaBloc extends ChangeNotifier {
  CentelhaServices _centelhaServices = CentelhaServices();

  List<DadosModel> listaDeDados = [];
  List<CadastroModel> listaDeCadastro = [];
  List<FinanceiroModel> listaFinanceiro = [];

  Future<List<DadosModel>> getMediuns() async {
    return await _centelhaServices.getMediuns().then((value) {
      listaDeDados.clear();
      print(value);
      value.forEach((element) {
        if (element.nome.toLowerCase() ==
            "Cinthia de Souza Dutra".toLowerCase()) {
          listaDeDados.add(element);
        }
      });

      notifyListeners();

      return value;
    });
  }
}
