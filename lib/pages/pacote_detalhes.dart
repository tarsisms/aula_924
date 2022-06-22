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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(widget.pacoteTuristico.imagem),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.pacoteTuristico.cidade,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
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
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${widget.pacoteTuristico.numDiarias} diárias',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Válido para o periodo:',
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'A partir de R\$ ${widget.pacoteTuristico.precoAntigo}',
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        widget.pacoteTuristico.validade,
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Text(
                      'R\$ ${widget.pacoteTuristico.precoAtual}',
                      style: const TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFD6C00),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
