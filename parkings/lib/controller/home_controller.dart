import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeController extends GetxController {
  var data = {}.obs; // Use 'obs' para observar alterações nos dados

  Future<void> fetchData() async {
    final response =
        await http.get(Uri.parse('http://localhost:8080/situacao-vagas'));

    if (response.statusCode == 200) {
      // O servidor retornou com sucesso
      data.value = json.decode(response.body);
    } else {
      // Houve um erro na solicitação
      throw Exception('Erro na solicitação: ${response.statusCode}');
    }
  }
}
