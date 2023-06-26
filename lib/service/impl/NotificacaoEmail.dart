import 'package:meu_app_orientacao_objetos/classes/Pessoa.dart';
import 'package:meu_app_orientacao_objetos/service/NotificacaoInterface.dart';
class NotificacaoEmail implements NotificacaoInterface{

  @override
    void enviarNotificacao(Pessoa pessoa) {
      print("Enviando Email para ${pessoa.getNome()}");  
  }

}