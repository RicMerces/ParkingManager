import 'package:flutter/material.dart';

class BlueFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent[700],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Digite aqui...',
          hintStyle: TextStyle(color: Colors.white54),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
