class ProdutoModel {
  final String imagem;
  final String titulo;
  final double preco;
  final String detalhes;
  final int estrelas;
  final int quantidade;
  final List<String> nutrientes;

  ProdutoModel({
    required this.imagem,
    required this.titulo,
    required this.preco,
    required this.detalhes,
    required this.estrelas,
    required this.quantidade,
    required this.nutrientes
  });
}
