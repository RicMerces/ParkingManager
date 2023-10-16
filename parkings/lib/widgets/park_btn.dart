import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:parkings/screens/home.dart';

class ParkBtn extends StatelessWidget {
  const ParkBtn({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => Get.to(Home()),
      child: Container(
        padding: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Color(0xff2A74F7),
              Color(0xff28D5E2),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
