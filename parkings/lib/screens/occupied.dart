import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Occupied extends StatelessWidget {
  const Occupied({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Estacionamento",
          style: TextStyle(
            color: Color(0xff191E26),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            Text(
              "Veja vagas ocupadas de Horistas",
            ),
            Expanded(
                child: ListView.builder(
                    itemBuilder: (BuildContext context) => Container()))
          ],
        ),
      ),
    );
  }
}
