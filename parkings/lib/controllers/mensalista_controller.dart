import 'package:get/get.dart';
import 'package:parkings/models/mensalista_model.dart';

import '../external/mensalista_external.dart';

class MensalistaController extends GetxController {
  final MensalistaExternal mensalistaExternal = MensalistaExternal();
  final RxList<MensalistaModel> mensalistas = <MensalistaModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchMensalistas();
  }

  Future<void> fetchMensalistas() async {
    try {
      final List<MensalistaModel> mensalistasData =
          await mensalistaExternal.fetchMensalistasEstacionados();
      mensalistas.assignAll(mensalistasData);
    } catch (e) {
      // Lide com erros aqui, como exibir uma mensagem de erro na tela
      print('Erro ao buscar mensalistas: $e');
    }
  }

  Future<void> criarNovoMensalista(
      String nome, String cpf, String telefone, List<String> placas) async {
    try {
      await mensalistaExternal.criarMensalista(nome, cpf, telefone, placas);
      // Atualize a lista de mensalistas após criar um novo
      fetchMensalistas();
    } catch (e) {
      // Lide com erros aqui
      print('Erro ao criar novo mensalista: $e');
    }
  }

  Future<void> registrarEntradaMensalista(String cpf) async {
    try {
      await mensalistaExternal.registrarEntradaMensalista(cpf);
      // Atualize a lista de mensalistas após registrar a entrada
      fetchMensalistas();
    } catch (e) {
      // Lide com erros aqui
      print('Erro ao registrar entrada do mensalista: $e');
    }
  }

  Future<void> registrarSaidaMensalista(String cpf) async {
    try {
      await mensalistaExternal.registrarSaidaMensalista(cpf);
      // Atualize a lista de mensalistas após registrar a saída
      fetchMensalistas();
    } catch (e) {
      // Lide com erros aqui
      print('Erro ao registrar saída do mensalista: $e');
    }
  }
}
