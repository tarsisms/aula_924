import 'package:aula_924/domain/pacote_turistico.dart';
import 'package:aula_924/pages/pacote_detalhes.dart';
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
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PacoteDetalhes(
                pacoteTuristico: widget.pacoteTuristico,
              );
            },
          ),
        );
      },
      child: Card(
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
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    children: [
                      const Icon(Icons.wb_sunny_outlined, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        '${widget.pacoteTuristico.numDiarias} Diárias',
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Row(
                        children: [
                          const Icon(Icons.person, size: 20),
                          const SizedBox(width: 4),
                          Text(
                            '${widget.pacoteTuristico.numPessoas} Pessoas',
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text('A partir de R\$ ${widget.pacoteTuristico.precoAntigo}'),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'R\$ ${widget.pacoteTuristico.precoAtual}',
                      style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFD6C00)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildImage(String imagem) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(8),
      ),
      child: Container(
        color: Colors.amber,
        height: 130,
        child: Image.network(
          imagem,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
