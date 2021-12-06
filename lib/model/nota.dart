class Nota {
  final int id;
  final String titulo;
  final String conteudo;
  final DateTime dataEdicao;

  Nota({
    this.id,
    this.titulo,
    this.conteudo,
    this.dataEdicao,
  });

  Map<String, dynamic> toMap() {
    return {
      "id" : id,
      "titulo" : titulo,
      "conteudo" : conteudo,
      "data_edicao" : dataEdicao
    };
  }

  @override
  String toString() {
    return "Nota: id: $id, titulo: $titulo, conteudo: $conteudo, data: $dataEdicao";
  }

}

enum NotaModo {
  Editar,
  Nova,
  Apagar
}




