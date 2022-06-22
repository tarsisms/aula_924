class PacoteTuristico {
  final String imagem;
  final String titulo;
  final String cidade;
  final int numDiarias;
  final int numPessoas;
  final int numParcelas;
  final int desconto;
  final String transporte;
  final String validade;
  final double precoAtual;
  final double precoAntigo;

  PacoteTuristico({
    required this.validade,
    required this.imagem,
    required this.titulo,
    required this.cidade,
    required this.numDiarias,
    required this.numPessoas,
    required this.numParcelas,
    required this.desconto,
    required this.transporte,
    required this.precoAtual,
    required this.precoAntigo,
  });
}
