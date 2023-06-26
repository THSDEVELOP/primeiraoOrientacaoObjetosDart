import 'package:meu_app_orientacao_objetos/classes/pessoa_fisica.dart';
import 'package:meu_app_orientacao_objetos/classes/pessoa_juridica.dart';
import 'package:meu_app_orientacao_objetos/enumerator/type_notification.dart';

void main(List<String> arguments) {
  var PessoaFisica1 = new PessoaFisica("TH", "Rua Miguel Ferreira", "449072");
  print(PessoaFisica1);

  var PessoaJuridica1 = new PessoaJuridica("THWORKS", "Rua", "123130001", tipoNotificacao: TipoNotificacao.email);
  print(PessoaJuridica1);
}
