import 'package:flutter/material.dart';

import 'package:quiz_biblico/core/components/numeros/numeros_tema.dart';
import 'package:quiz_biblico/core/components/numeros/numeros_grid.dart';


class EscolherPergunta extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;
    return SafeArea(
      child: LayoutBuilder(builder: (ctx, constraints) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(46.0),
            child: EscolherPerguntaTema(isLandscape: isLandscape),
          ),
          body: EscolherPerguntaNumero(),
        );
      }),
    );
  }
}
