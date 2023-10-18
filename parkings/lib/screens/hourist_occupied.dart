import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parkings/controller/criar_mensalista_controller.dart';
import 'package:parkings/widgets/container_horista.dart';
import '../controller/horista_estacionado_controller.dart';

class HouristsOccupieds extends StatefulWidget {
  const HouristsOccupieds({Key? key}) : super(key: key);

  @override
  State<HouristsOccupieds> createState() => _HouristsOccupiedsState();
}

class _HouristsOccupiedsState extends State<HouristsOccupieds> {
  final HoristasEstacionadosController horistasController =
      Get.put(HoristasEstacionadosController());

  @override
  void initState() {
    super.initState();
    horistasController.fetchHoristasEstacionados();
  }

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
            Obx(() {
              final horistasEstacionados =
                  horistasController.horistasEstacionados;

              if (horistasEstacionados.isEmpty) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Center(
                    child: Text("Nenhum Horista foi encontrado estacionado"),
                  ),
                );
              } else {
                return Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: horistasEstacionados.length,
                      itemBuilder: (BuildContext context, int index) {
                        final horista = horistasEstacionados[index];
                        return ContainerHorista(
                          isHourist: horista['isHorista'],
                          delete: () => horistasController
                              .registrarSaidaHorista(horista['placa']),
                          horista: horista['dataHoraEntrada'],
                          placa: horista['placa'],
                          id: index,
                        );
                      },
                    ),
                  ),
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}
