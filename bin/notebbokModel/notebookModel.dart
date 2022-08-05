class NotebookModel {
  String cor;
  String marca;
  double memoria;
  double armazenarArquivo;
  double removerArquivo;
  double memoriaRam;

  NotebookModel({
    required this.cor,
    required this.marca,
    required this.memoria,
    required this.memoriaRam,
    required this.armazenarArquivo,
    required this.removerArquivo,
  }) : _memoriaRestante = memoria;

  double _memoriaRestante;
  double _memoriaUtilizada = 0;

  void armazernar() {
    if (_memoriaRestante > 0 && _memoriaRestante >= armazenarArquivo) {
      _memoriaUtilizada += armazenarArquivo;
      _memoriaRestante -= armazenarArquivo;
    } else {
      print("Sem espaco para armarzenar!");
    }
  }

  void remover() {
    if (_memoriaRestante != memoria && _memoriaRestante >= removerArquivo) {
      _memoriaRestante += removerArquivo;
      _memoriaUtilizada -= removerArquivo;
    }
  }

  void mostrarMemoriaRestante() {
    print("Memoria restante: $_memoriaRestante");
  }

  void mostrarMemoriaUtilizada() {
    print("Memoria utilizado: $_memoriaUtilizada");
  }
}
