import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:parkings/models/mensalista.dart';

class MensalistaController extends GetxController {
  Future<void> createMensalista(Mensalista mensalista) async {
    try {
      final response = await http.post(
        Uri.parse('http://localhost:8080/criar-mensalista'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(mensalista.toJson()),
      );
      print(mensalista.toJson().toString());
      if (response.statusCode != 200) {
        throw Exception('Erro ao criar mensalista: ${response.body}');
      }
    } catch (error) {
      print('Erro ao fazer a chamada HTTP: $error');
    }
  }
}
