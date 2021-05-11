import 'package:flutter/material.dart';

import '../../models/modelo.dart';

class PerguntasAlternativasQuestoes extends StatelessWidget {
  const PerguntasAlternativasQuestoes({
    Key key,
    @required this.modelo,
    @required this.isLandscape,
    @required this.constraints,
  }) : super(key: key);

  final Perguntas modelo;
  final bool isLandscape;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Text(
        modelo.pergunta,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'FredokaOne',
          fontSize: isLandscape
              ? constraints.maxHeight * 0.07
              : constraints.maxHeight * 0.04,
          shadows: [
            Shadow(
              blurRadius: 7.0,
              color: Colors.black,
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
