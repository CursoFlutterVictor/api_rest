import 'dart:convert';
import 'package:api_rest/models/person_model.dart';
import 'package:http/http.dart' as http;

class ServicesReqResApi {
  void getReqRepService() {
    var url = Uri.parse("https://reqres.in/api/users?page=2");

    print("URL: $url");

    // Hacemos la llamada a la api
    http.get(url).then((respuesta) {
      print(respuesta);
      // Convertimos el JSON en un objeto Person
      final resReqRes = Person.fromJson(jsonDecode(respuesta.body));
      print("fromjson");
    });

    print("hola desde mi api");
  }
}
