import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HoristasEstacionadosController extends GetxController {
  var horistasEstacionados = <Map<String, dynamic>>[].obs;

  Future<void> fetchHoristasEstacionados() async {
    final response = await http
        .get(Uri.parse('http://localhost:8080/trazer-horistas-estacionados'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List<dynamic>;
      horistasEstacionados
          .assignAll(data.map((e) => e as Map<String, dynamic>));
      print(response.body);
    } else {
      throw Exception(
        'Erro na solicitação: ${response.statusCode}',
      );
    }
  }

  Future<String> registrarSaidaHorista(String placa) async {
    final response = await http.patch(
        Uri.parse('http://localhost:8080/registrar-saida-horista/$placa'));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Erro na solicitação: ${response.statusCode}');
    }
  }
}
