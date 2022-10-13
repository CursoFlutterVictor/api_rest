import 'package:api_rest/models/support_model.dart';
import 'package:api_rest/models/data_model.dart';
// import 'support_model.dart';
// import 'data_model.dart';

class Person {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Data>? data;
  Support? support;

  Person(
      {this.page,
      this.perPage,
      this.total,
      this.totalPages,
      this.data,
      this.support});

  Person.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['per_page'];
    total = json['total'];
    totalPages = json['total_pages'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    support =
        json['support'] != null ? Support?.fromJson(json['support']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['page'] = page;
    data['per_page'] = perPage;
    data['total'] = total;
    data['total_pages'] = totalPages;

    // CORREGIMOS ESTA LINEA, PARA GENERAR BIEN LA LISTA DE MAPAS
    /* 
    if (data != null) {
      data['data'] = data?.map((v) => v.toJson()).toList();
    }
    */
    data['data'] = List<Data>.from([data]);

    if (support != null) {
      data['support'] = support?.toJson();
    }
    return data;
  }
}
