import 'package:get/get.dart';
import 'package:parkings/external/horista_external.dart';
import 'package:parkings/models/horista_model.dart';

class HoristaController extends GetxController {
  final HoristaExternal horistaExternal = HoristaExternal();
  final RxList<HoristaModel> horistas = <HoristaModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchHoristas();
  }

  Future<void> fetchHoristas() async {
    try {
      final List<HoristaModel> horistasData =
          await horistaExternal.fetchHoristasEstacionados();
      horistas.assignAll(horistasData);
    } catch (e) {
      print('Erro ao buscar horistas: $e');
    }
  }

  Future<void> darEntradaHorista(String placa) async {
    try {
      await horistaExternal.darEntradaHorista(placa);

      fetchHoristas();
    } catch (e) {
      print('Erro ao dar entrada para o horista: $e');
    }
  }

  Future<String> registrarSaidaHorista(String placa) async {
    try {
      final String resultado =
          await horistaExternal.registrarSaidaHorista(placa);

      fetchHoristas();
      return resultado;
    } catch (e) {
      print('Erro ao registrar saída do horista: $e');
      return 'Erro ao registrar saída';
    }
  }
}
