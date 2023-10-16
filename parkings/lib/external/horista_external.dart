import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:parkings/models/horista_model.dart';

class HoristaExternal {
  Future<List<HoristaModel>> fetchHoristasEstacionados() async {
    final response = await http
        .get(Uri.parse('http://localhost:8080/trazer-horistas-estacionados'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      List<HoristaModel> horistas = [];

      for (var item in jsonResponse) {
        horistas.add(HoristaModel.fromJson(item));
      }

      return horistas;
    } else {
      throw Exception('Falha ao carregar os dados da API');
    }
  }

  Future<void> darEntradaHorista(String placa) async {
    final Map<String, String> data = {
      'placa': placa,
    };

    final response = await http.post(
      Uri.parse('http://localhost:8080/registrar-entrada-horista'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: json.encode(data),
    );

    if (response.statusCode != 200) {
      throw Exception('Falha ao dar entrada para o horista');
    }
  }

  Future<String> registrarSaidaHorista(String placa) async {
    final response = await http.post(
      Uri.parse('http://localhost:8080/registrar-saida-horista/$placa'),
    );

    if (response.statusCode == 200) {
      return response.body; // Retorna a string formatada de saída
    } else {
      throw Exception('Falha ao registrar a saída do horista');
    }
  }
}
