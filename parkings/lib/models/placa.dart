class Placa {
  String placa;

  Placa({required this.placa});

  Map<String, dynamic> toJson() {
    return {
      'placa': placa,
    };
  }
}
