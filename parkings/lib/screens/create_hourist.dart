import 'package:flutter/material.dart';
import 'package:parkings/widgets/blue_form_field.dart';

class CreateHourist extends StatelessWidget {
  const CreateHourist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Criar Horistas",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          BlueFormField(),
          BlueFormField(),
          BlueFormField(),
          BlueFormField(),
        ],
      ),
    );
  }
}
