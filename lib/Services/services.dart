import 'dart:convert';

import 'package:alice_care_admin/Models/doctors_model.dart';
import 'package:http/http.dart';

Future<List<DoctorsApi>> getDoctors() async {
  final url = "https://sheetdb.io/api/v1/nz5fqe3pal0h8?sheet=doctors";

  final Response response = await get(Uri.parse(url));
  var dataList = <DoctorsApi>[];

  if (response.statusCode == 200) {
    // print(response.body);
    final data = jsonDecode(response.body);
    for (var datas in data) {
      dataList.add(DoctorsApi.fromJson(datas));
    }
    return dataList;
  } else {
    throw {Exception("Cant load data")};
  }
}
