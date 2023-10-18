import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MensalistasEstacionadosController extends GetxController {
  var mensalistasEstacionados = <Map<String, dynamic>>[].obs;

  Future<void> fetchMensalistasEstacionados() async {
    final response = await http.get(
        Uri.parse('http://localhost:8080/trazer-mensalistas-estacionados'));

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);

      if (responseData is List) {
        mensalistasEstacionados.value =
            responseData.cast<Map<String, dynamic>>();
      } else {
        print("A resposta não é uma lista de objetos JSON.");
      }
    } else {
      throw Exception('Erro na solicitação: ${response.statusCode}');
    }
  }
}
