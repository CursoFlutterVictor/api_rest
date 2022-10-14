import 'dart:convert';
import 'dart:developer';
import 'package:api_rest/models/person_model.dart';
import 'package:http/http.dart' as http;

class ServicesReqResApi {
  void getReqRepService() {
    Person persons = Person();
    var url = Uri.parse("https://reqres.in/api/users?page=2");

    print("URL: $url");

    // Hacemos la llamada a la api
    http.get(url).then((respuesta) {
      print(respuesta.body);

      // Convertimos el JSON en un objeto Person
      persons = Person.fromJson(jsonDecode(respuesta.body));

      // Recorro la lista de personas. Obliga a meter el nullsafety ?
      persons.data?.forEach((element) {
        print(element.email);
      });
      // Seria igual que un try cath
    }).catchError((err) {
      log("ERROR $err");
    });

    print("hola desde mi api");
  }
}
