import 'package:meu_app_orientacao_objetos/service/NotificacaoInterface.dart';
import 'package:meu_app_orientacao_objetos/classes/Pessoa.dart';

class NotificacaoSMS implements NotificacaoInterface {

  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Sms para ${pessoa.getNome()}");  
  }

}