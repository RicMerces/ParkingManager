import 'dart:convert';

class HoristaModel {
  final String placa;
  final String dataHoraEntrada;

  HoristaModel({
    required this.placa,
    required this.dataHoraEntrada,
  });

  Map<String, dynamic> toMap() {
    return {
      'placa': placa,
      'dataHoraEntrada': dataHoraEntrada,
    };
  }

  factory HoristaModel.fromMap(Map<String, dynamic> map) {
    return HoristaModel(
      placa: map['placa'] ?? '',
      dataHoraEntrada: map['dataHoraEntrada'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory HoristaModel.fromJson(String source) =>
      HoristaModel.fromMap(json.decode(source));
}
