import 'package:flutter/material.dart';

import '../components/perguntasAlternativas/perguntas_alternativas_tema.dart';
import '../components/perguntasAlternativas/perguntas_alternativas_questoes.dart';
import '../components/perguntasAlternativas/perguntas_alternativas_a.dart';
import '../components/perguntasAlternativas/perguntas_alternativas_b.dart';
import '../components/perguntasAlternativas/perguntas_alternativas_c.dart';
import '../components/perguntasAlternativas/perguntas_alternativas_texto.dart';

import '../models/modelo.dart';

class PerguntasRespostas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final modelo = ModalRoute.of(context).settings.arguments as Perguntas;

    final mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (ctx, constraints) {
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
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                PerguntasAlternativasTema(
                  modelo: modelo,
                ),
                SizedBox(
                  height: 10.0,
                ),
                PerguntasAlternativasQuestoes(
                  modelo: modelo,
                  isLandscape: isLandscape,
                  constraints: constraints,
                ),
                SizedBox(
                  height: 10.0,
                ),
                PerguntasAlternativaA(
                  modelo: modelo,
                  isLandscape: isLandscape,
                  constraints: constraints,
                ),
                SizedBox(
                  height: 5.0,
                ),
                PerguntasAlternativasB(
                  modelo: modelo,
                  isLandscape: isLandscape,
                  constraints: constraints,
                ),
                SizedBox(
                  height: 5.0,
                ),
                PerguntasAlternativasC(
                  modelo: modelo,
                  isLandscape: isLandscape,
                  constraints: constraints,
                ),
                SizedBox(
                  height: 10.0,
                ),
                if (!isLandscape)
                  PerguntasAlternativasTexto(
                    isLandscape: isLandscape,
                    constraints: constraints,
                  ),
              ],
            )),
          );
        }),
      ),
    );
  }
}

