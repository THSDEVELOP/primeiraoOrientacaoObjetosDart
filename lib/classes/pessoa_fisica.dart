import 'package:meu_app_orientacao_objetos/classes/Pessoa.dart';
import 'package:meu_app_orientacao_objetos/enumerator/type_notification.dart';

class PessoaFisica extends Pessoa {
  String _cpf = '';

  void setCPF(String cpf) {
    _cpf = cpf;
  }

  String getCPF() {
    return _cpf;
  }

  PessoaFisica(
      String nome, String endereco, String cpf, {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "CPF": _cpf,
      "TipoNotificacao": getTipoNotificacao()
    }.toString();
  }
}
