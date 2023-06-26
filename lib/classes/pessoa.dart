import 'package:meu_app_orientacao_objetos/enumerator/type_notification.dart';

abstract class Pessoa {
  String _nome = '';
  String _endereco = '';
  String _email = "";
    String _celular = '';
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.nenhum;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

    void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email;
  }

    void setCelular(String celular) {
    _celular = celular;
  }

  String getCelular() {
    return _celular;
  }

    void setToken(String token) {
    _token = token;
  }

  String getToken() {
    return _token;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  Pessoa(String nome, String endereco, {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Endereco": _endereco,
      "TipoNotificacao": _tipoNotificacao
    }.toString();
  }
}