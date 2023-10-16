import 'dart:convert';

class MensalistaModel {
  final int id;
  final String placa;
  final String dataHoraEntrada;
  final String cpf;

  MensalistaModel({
    required this.id,
    required this.placa,
    required this.dataHoraEntrada,
    required this.cpf,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'placa': placa,
      'dataHoraEntrada': dataHoraEntrada,
      'cpf': cpf,
    };
  }

  factory MensalistaModel.fromMap(Map<String, dynamic> map) {
    return MensalistaModel(
      id: map['id']?.toInt() ?? 0,
      placa: map['placa'] ?? '',
      dataHoraEntrada: map['dataHoraEntrada'] ?? '',
      cpf: map['cpf'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MensalistaModel.fromJson(String source) =>
      MensalistaModel.fromMap(json.decode(source));
}
