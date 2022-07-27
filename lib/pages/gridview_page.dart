import 'package:aula_924/data/BD.dart';
import 'package:aula_924/domain/pacote_turistico.dart';
import 'package:aula_924/widgets/card_pacote_turistico.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
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
        child: buildBody(),
      ),
    );
  }

  buildBody() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.4,
      ),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return CardPacoteTuristico(
          pacoteTuristico: list[index],
        );
      },
    );
  }
}
