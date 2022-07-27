import 'package:aula_924/data/BD.dart';
import 'package:aula_924/domain/pacote_turistico.dart';
import 'package:aula_924/widgets/card_pacote_turistico.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PacoteTuristico> list = BD.lista;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xFF10397B),
        title: const Text(
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
            buildListView()
          ],
        ),
      ),
    );
  }

  buildListView() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return CardPacoteTuristico(
          pacoteTuristico: list[index],
        );
      },
    );
  }
}
