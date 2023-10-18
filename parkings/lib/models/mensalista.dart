import 'package:parkings/models/placa.dart';

class Mensalista {
  final String nome;
  final String cpf;
  final String tel;
  final List<Placa> placas;

  Mensalista({
    required this.nome,
    required this.cpf,
    required this.tel,
    required this.placas,
  });

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'cpf': cpf,
      'tel': tel,
      'placas': placas.map((placa) => placa.toJson()).toList(),
    };
  }
}
