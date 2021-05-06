import 'package:flutter/material.dart';

class InicioSobreTexto extends StatelessWidget {
  const InicioSobreTexto({
    Key key,
    @required this.isLandscape,
    @required this.constraints,
  }) : super(key: key);

  final bool isLandscape;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth * 0.9,
      height: constraints.maxHeight * 0.4,
      margin: EdgeInsets.only(
        right: 2,
        left: 2,
      ),
      child: Text(
        'Entrando no jogo escolha o número da pergunta. No final anote seu ponto e aperte em escolher pergunta. E escolha o número novamente. Tanto pode brincar com uma pessoa quanto com duas ou mais. Anotando seus pontos e dividindo a vez das perguntas.',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'FredokaOne',
          fontSize: isLandscape
              ? constraints.maxHeight * 0.05
              : constraints.maxHeight * 0.03, //isLandscape ? 17 : 16,
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
