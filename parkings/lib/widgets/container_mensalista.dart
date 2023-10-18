import 'package:flutter/material.dart';

class ContainerMensalista extends StatelessWidget {
  const ContainerMensalista({
    Key? key,
    required this.placa,
    required this.horista,
    required this.cpf,
    required this.id,
  }) : super(key: key);

  final String placa;
  final String cpf;
  final String horista;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff28D5E2), borderRadius: BorderRadius.circular(5)),
      height: 150,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "983.342.342-43",
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.exit_to_app_rounded,
                color: Colors.black,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "data: 09/08/2023 - hora: 12:30",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "GUI-6969",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              Text(
                "VAGA22",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
