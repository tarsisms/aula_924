import 'package:aula_924/domain/pacote_turistico.dart';
import 'package:aula_924/widgets/card_pacote_turistico.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PacoteTuristico pacote1 = PacoteTuristico(
    imagem: 'https://letsdive.com.br/wp-content/uploads/2019/04/PROCURANDO-MERGULHO-EM-MARAGOGI-CONSIDERE-MACEIO.png',
    titulo: 'Pacote Maragogi 2023',
    transporte: 'Hotel All inclusive',
    cidade: 'MARAGOGI, BRA',
    validade: 'De 01 ago 2022 a 31 dez 2023',
    desconto: 45,
    numDiarias: 7,
    numPessoas: 3,
    numParcelas: 12,
    precoAntigo: 4819,
    precoAtual: 819,
  );
  PacoteTuristico pacote2 = PacoteTuristico(
    imagem: 'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
    titulo: 'Pacote Cancún 2022/2023',
    transporte: 'Aéreo - Hotel All inclusive',
    validade: 'De 01 ago 2022 a 31 dez 2023',
    cidade: 'CANCÚN, MEX',
    desconto: 45,
    numDiarias: 5,
    numPessoas: 2,
    numParcelas: 6,
    precoAntigo: 6819,
    precoAtual: 2819,
  );
  PacoteTuristico pacote3 = PacoteTuristico(
    imagem: 'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
    titulo: 'Pacote Carneiros 2022/2025',
    transporte: 'Aéreo',
    validade: 'De 01 ago 2022 a 31 dez 2023',
    cidade: 'RECIFE, BRA',
    desconto: 45,
    numDiarias: 3,
    numPessoas: 1,
    numParcelas: 6,
    precoAntigo: 2000,
    precoAtual: 1200,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xFF10397B),
        title: Text(
          'Pesquisar',
          style: TextStyle(fontSize: 24),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Tops destinos mais buscados',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Corre que tá rolando muita promoção',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'EU QUERO!',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF8FF04),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  const Placeholder(
                    fallbackHeight: 150,
                    fallbackWidth: 100,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            CardPacoteTuristico(pacoteTuristico: pacote1),
            CardPacoteTuristico(pacoteTuristico: pacote2),
            CardPacoteTuristico(pacoteTuristico: pacote3),
          ],
        ),
      ),
    );
  }
}
