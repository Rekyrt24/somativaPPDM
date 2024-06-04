class Usuario {
  String? _nome;
  String? _especialidade;

  String get nome => _nome!;

  set nome(String value) {
    _nome = value;
  }
  String get especialidade => _especialidade!;

  set especialidade(String value) {
    _especialidade = value;
  }

}