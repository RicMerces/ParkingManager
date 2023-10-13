import 'package:flutter/material.dart';

class CreateMounthly extends StatelessWidget {
  const CreateMounthly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Criar Mensalista",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
