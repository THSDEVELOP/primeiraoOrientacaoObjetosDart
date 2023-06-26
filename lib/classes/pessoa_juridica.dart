import 'package:meu_app_orientacao_objetos/classes/Pessoa.dart';
import 'package:meu_app_orientacao_objetos/enumerator/type_notification.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = '';

  void setCNPJ(String cnpj) {
    _cnpj = _cnpj;
  }

  String getCNPJ() {
    return _cnpj;
  }

  PessoaJuridica(String nome, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "CNPJ": _cnpj,
      "TipoNotificacao": getTipoNotificacao()
    }.toString();
  }
}
