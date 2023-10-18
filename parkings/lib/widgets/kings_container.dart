import 'package:flutter/material.dart';

class KingsContainer extends StatelessWidget {
  const KingsContainer({
    Key? key,
    required this.isOccuped,
    required this.isHourist,
    required this.qtd,
  }) : super(key: key);

  final bool isOccuped;
  final bool isHourist;
  final String qtd;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: !isOccuped ? Color(0xffBFF0FF) : Color(0xffE2E5E9),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              qtd,
              style: TextStyle(
                color: !isOccuped ? Color(0xff2A74F7) : Color(0xff191E26),
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            Text(
              isHourist ? "para Horistas" : "para Mensalista",
              style: TextStyle(
                color: !isOccuped ? Color(0xff2A74F7) : Color(0xff191E26),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
