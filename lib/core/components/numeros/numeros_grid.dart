import 'package:flutter/material.dart';

import 'numero_item.dart';

import '../../data/mock_data.dart';


class EscolherPerguntaNumero extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.orange[500],
            Colors.yellow[200],
          ],
        ),
      ),
      child: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          childAspectRatio: 8 / 7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: MOCK_PERGUNTAS.map((per) {
          return NumeroItem(per);
        }).toList(),
      ),
    );
  }
}
