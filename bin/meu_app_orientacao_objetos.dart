import 'package:meu_app_orientacao_objetos/classes/pessoa_fisica.dart';
import 'package:meu_app_orientacao_objetos/classes/pessoa_juridica.dart';
import 'package:meu_app_orientacao_objetos/enumerator/type_notification.dart';
import 'package:meu_app_orientacao_objetos/service/EnviarNotificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica1 = PessoaFisica("TH", "Rua Miguel Ferreira", "449072");
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica("THWORKS", "Rua", "123130001", tipoNotificacao: TipoNotificacao.email);
  print(pessoaJuridica1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica1);
  enviarNotificacao.notificar(pessoaJuridica1);
}
