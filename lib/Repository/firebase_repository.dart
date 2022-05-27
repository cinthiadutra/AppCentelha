

// class ServicesFirebase {
//   FirebaseDatabase database = FirebaseDatabase();

//   Future<List<DadosModel>> getDados() async {
//     Map? data;
//     List<Map<String, dynamic>> item = [];
//     await database
//         .reference()
//         .child('Acesso')
//         .once()
//         .then((DataSnapshot snapshot) {
//       data = snapshot.value;
//       data!.forEach((index, data) => item.add({"key": index, ...data}));
//     });
//     return item.map((e) => AcessoModel.fromMap(e)).toList();
//   }

// FirebaseDatabase() {
// }