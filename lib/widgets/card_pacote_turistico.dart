import 'package:aula_924/domain/pacote_turistico.dart';
import 'package:flutter/material.dart';

class CardPacoteTuristico extends StatefulWidget {
  final PacoteTuristico pacoteTuristico;

  const CardPacoteTuristico({
    Key? key,
    required this.pacoteTuristico,
  }) : super(key: key);

  @override
  _CardPacoteTuristicoState createState() => _CardPacoteTuristicoState();
}

class _CardPacoteTuristicoState extends State<CardPacoteTuristico> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildImage(widget.pacoteTuristico.imagem),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.pacoteTuristico.titulo,
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.pacoteTuristico.transporte,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${widget.pacoteTuristico.numDiarias} Diárias ${widget.pacoteTuristico.numPessoas} Pessoa',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                Text('A partir de R\$ ${widget.pacoteTuristico.precoAntigo}'),
                Text(
                  'R\$ ${widget.pacoteTuristico.precoAtual}',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFD6C00)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildImage(String imagem) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(8),
      ),
      child: Image.network(imagem),
    );
  }
}
