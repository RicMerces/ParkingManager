import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class EntradaMensalistaController extends GetxController {
  Future<void> registrarEntradaMensalista(String cpf) async {
    try {
      final url =
          Uri.parse('http://localhost:8080/registrar-entrada-mensalista');
      final response = await http.post(
        url,
        body: cpf,
      );

      if (response.statusCode == 200) {
        print('Entrada de mensalista registrada com sucesso!');
      } else {
        throw Exception(
            'Erro ao registrar entrada de mensalista: ${response.statusCode}');
      }
    } catch (error) {
      print('Erro ao fazer a chamada HTTP: $error');
    }
  }
}
