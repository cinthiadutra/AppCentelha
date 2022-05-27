
import 'package:projetos/services/services_firebase.dart';

import '../models/meus_dados_model.dart';

class CentelhaServices {
  ServicesFirebase _servicesFirebase = ServicesFirebase();

  Future<List<DadosModel>> getMediuns() async {
    return await _servicesFirebase.getMediuns();
  }
}
