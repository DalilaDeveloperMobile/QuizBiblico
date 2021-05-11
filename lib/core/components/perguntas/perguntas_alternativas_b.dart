import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../utils/app_rotas.dart';
import '../../models/modelo.dart';

class PerguntasAlternativasB extends StatelessWidget {
  const PerguntasAlternativasB({
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
    return InkWell(
      onTap: () => {
        Modular.to.pushReplacementNamed(
          AppRoutes.ALTERNATIVA2,
          arguments: modelo,
        ),
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(255, 145, 77, 10),
            border: Border(
              top: BorderSide(
                //                    <--- top side
                color: Colors.white,
                width: 5.0,
              ),
              left: BorderSide(
                color: Colors.white,
                width: 5.0,
              ),
              bottom: BorderSide(
                //                    <--- bottom side
                color: Colors.white,
                width: 5.0,
              ),
              right: BorderSide(
                //                    <--- right side
                color: Colors.white,
                width: 5.0,
              ),
            ),
          ),
          child: Text(
            modelo.alternativas2,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'FredokaOne',
              fontSize: isLandscape
                  ? constraints.maxHeight * 0.05
                  : constraints.maxHeight * 0.03,
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
        ),
      ),
    );
  }
}
