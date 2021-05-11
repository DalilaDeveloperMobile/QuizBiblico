import 'package:flutter/material.dart';

class PerguntasAlternativasTexto extends StatelessWidget {
  const PerguntasAlternativasTexto({
    Key key,
    @required this.isLandscape,
    @required this.constraints,
  }) : super(key: key);

  final bool isLandscape;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      child: Text(
        'Valendo 10 Pontos',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'FredokaOne',
          fontSize: isLandscape
              ? constraints.maxHeight * 0.09
              : constraints.maxHeight * 0.06,
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
