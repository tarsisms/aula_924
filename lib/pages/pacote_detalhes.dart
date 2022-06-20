import 'package:aula_924/domain/pacote_turistico.dart';
import 'package:flutter/material.dart';

class PacoteDetalhes extends StatefulWidget {
  final PacoteTuristico pacoteTuristico;

  const PacoteDetalhes({
    Key? key,
    required this.pacoteTuristico,
  }) : super(key: key);

  @override
  _PacoteDetalhesState createState() => _PacoteDetalhesState();
}

class _PacoteDetalhesState extends State<PacoteDetalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(widget.pacoteTuristico.imagem),
          const SizedBox(height: 16),
          Text(
            widget.pacoteTuristico.titulo,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.pacoteTuristico.transporte,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
