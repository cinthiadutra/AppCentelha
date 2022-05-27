import 'package:firebase_database/firebase_database.dart';

import '../models/meus_dados_model.dart';

class ServicesFirebase {
  var ref = new FirebaseDatabase().reference();
  List<DadosModel> sliderList = [];

  Future<List<DadosModel>> getMediuns() async {
    List<DadosModel> lista = [];
    Map data;
    List<Map<String, dynamic>> item = [];
    await ref.child('Acesso').once().then((DataSnapshot snapshot) {
      for (var value in snapshot.value.values) {
        print(value);
        print(lista);
        lista.add(DadosModel.fromMap(value));
        print(lista);
      }
      data = snapshot.value;
      data.forEach((index, data) => item.add({"key": index, ...data}));
    });
    print(lista.length);
    return item.map((e) => DadosModel.fromMap(e)).toList();
  }
}
