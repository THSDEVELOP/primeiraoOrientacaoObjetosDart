import 'package:meu_app_orientacao_objetos/classes/Pessoa.dart';
import 'package:meu_app_orientacao_objetos/enumerator/type_notification.dart';
import 'package:meu_app_orientacao_objetos/service/NotificacaoInterface.dart';
import 'package:meu_app_orientacao_objetos/service/impl/NotificacaoEmail.dart';
import 'package:meu_app_orientacao_objetos/service/impl/NotificacaoPushNotification.dart';
import 'package:meu_app_orientacao_objetos/service/impl/NotificacaoSMS.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.email:
        notificacao = NotificacaoEmail();
        break;

      case TipoNotificacao.pushNotification:
        notificacao = NotificacaoPushNotification();
        break;

      case TipoNotificacao.sms:
        notificacao = NotificacaoSMS();
        break;
      default:
        break;
    }
    if(notificacao != null) {
    notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem nenhum tipo de notificação");
    }
  }
}