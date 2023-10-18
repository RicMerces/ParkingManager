import 'package:http/http.dart' as http;

Future<void> registrarEntradaHorista(String placa) async {
  final url = Uri.parse('http://localhost:8080/registrar-entrada-horista');

  final response = await http.post(
    url,
    body: placa,
  );

  if (response.statusCode == 200) {
    print('Entrada de horista registrada com sucesso!');
  } else {
    print('Erro ao registrar entrada de horista: ${response.statusCode}');
  }
}
