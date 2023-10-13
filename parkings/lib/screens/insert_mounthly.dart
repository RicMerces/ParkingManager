import 'package:flutter/material.dart';

class InsertMounthly extends StatelessWidget {
  const InsertMounthly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Inserir mensalista",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
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
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "GUI-6969",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            "VAGA22",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
