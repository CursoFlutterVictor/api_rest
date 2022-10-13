// GENERAR EL MODELO DESDE UN ARCHIVO JSON
// get generate model on home with assets/models/user.json --skipProvider

// GENERAR EL MODELO DESDE UNA URL
// get generate model on home from "https://api.github.com/users/CpdnCristiano"

import 'package:api_rest/services/reqres_services.dart';

void main() {
  ServicesReqResApi().getReqRepService();
}
