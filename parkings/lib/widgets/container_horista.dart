import 'package:flutter/material.dart';

class ContainerHorista extends StatelessWidget {
  const ContainerHorista({
    Key? key,
    required this.placa,
    required this.horista,
    required this.id,
    required this.delete,
  }) : super(key: key);

  final String placa;
  final String horista;
  final int id;
  final Function delete;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff2A74F7),
        borderRadius: BorderRadius.circular(5),
      ),
      height: 150,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                horista,
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                onTap: () async {
                  final result = await delete();
                  print(result);
                },
                child: Icon(
                  Icons.exit_to_app_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            placa,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Text(
            "VAGA${id + 1}",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
