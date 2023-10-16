import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parkings/widgets/park_btn.dart';

class Openin extends StatelessWidget {
  const Openin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Column(
              children: [
                Text(
                  "Bem vindo(a) ao ",
                  style: TextStyle(
                    color: Color(0xff191E26),
                  ),
                ),
                Text(
                  "Parkings",
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(0xff191E26),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SvgPicture.asset("assets/svg/logo.svg"),
            const Column(
              children: [
                Text(
                  "Estacione seu carro com tranquilidade",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff191E26),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "o seu conforto é nossa prioridade",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff191E26),
                  ),
                ),
              ],
            ),
            ParkBtn(title: "Entrar"),
          ],
        ),
      ),
    );
  }
}
