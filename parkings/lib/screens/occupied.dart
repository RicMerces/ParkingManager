import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Occupied extends StatelessWidget {
  const Occupied({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text(
          "Estacionamento",
          style: TextStyle(
            color: Color(0xff191E26),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                "Veja vagas ocupadas de Horistas",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff191E26),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) => Container(
                    decoration: BoxDecoration(
                        color: Color(0xff2A74F7),
                        borderRadius: BorderRadius.circular(5)),
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
                              "12 Horas - 11/03/2023",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.exit_to_app_rounded,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "12 Horas - 11/03/2023",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.exit_to_app_rounded),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
