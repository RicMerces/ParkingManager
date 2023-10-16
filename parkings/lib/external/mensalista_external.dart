import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:parkings/models/mensalista_model.dart';

class MensalistaExternal {
  Future<List<MensalistaModel>> fetchMensalistasEstacionados() async {
    final response = await http.get(
        Uri.parse('http://localhost:8080/trazer-mensalistas-estacionados'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      List<MensalistaModel> mensalistas = [];

      for (var item in jsonResponse) {
        mensalistas.add(MensalistaModel.fromJson(item));
      }

      return mensalistas;
    } else {
      throw Exception('Falha ao carregar os dados da API');
    }
  }

  Future<void> criarMensalista(
      String nome, String cpf, String telefone, List<String> placas) async {
    final Map<String, dynamic> data = {
      'nome': nome,
      'cpf': cpf,
      'tel': telefone,
      'placas': placas.map((placa) => {'placa': placa}).toList(),
    };

    final response = await http.post(
      Uri.parse('http://localhost:8080/criar-mensalista'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: json.encode(data),
    );

    if (response.statusCode != 200) {
      throw Exception('Falha ao criar o mensalista');
    }
  }

  Future<void> registrarEntradaMensalista(String cpf) async {
    final Map<String, String> data = {
      'cpf': cpf,
    };

    final response = await http.post(
      Uri.parse('http://localhost:8080/registrar-entrada-mensalista'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: json.encode(data),
    );

    if (response.statusCode != 200) {
      throw Exception('Falha ao registrar a entrada do mensalista');
    }
  }

  Future<void> registrarSaidaMensalista(String cpf) async {
    final response = await http.post(
      Uri.parse('http://localhost:8080/registrar-saida-mensalista/$cpf'),
    );

    if (response.statusCode != 200) {
      throw Exception('Falha ao registrar a saída do mensalista');
    }
  }
}
