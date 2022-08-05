import 'dart:io';
import '../notebbokModel/notebookModel.dart';
import 'linha.dart';

int fechar = 1;

void painel() {
  NotebookModel Notebook = NotebookModel(
    cor: "PRETO",
    marca: "ACER",
    memoria: 500,
    memoriaRam: 16,
    armazenarArquivo: 50,
    removerArquivo: 25,
  );

  do {
    linha();
    print("Memoria total do notebook ${Notebook.memoria}");
    Notebook.mostrarMemoriaUtilizada();
    Notebook.mostrarMemoriaRestante();
    linha();
    print("Escolha oque deseja fazer:");
    print("1- Armazenar arquivo");
    print("2- Remover arquivo");
    print("0- Desligar...");
    String? respText = stdin.readLineSync();
    int resp = int.tryParse(respText ?? "0") ?? 0;

    if (resp == 1) {
      Notebook.armazernar();
    } else if (resp == 2) {
      Notebook.remover();
    } else if (resp == 0) {
      fechar++;
    } else {
      print("Opcao invalida!!Escolha uma opcao valida");
    }
  } while (fechar == 1);
}
