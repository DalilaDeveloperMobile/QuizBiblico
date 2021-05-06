import 'package:flutter/material.dart';

import '../utils/app_rotas.dart';
import '../models/modelo.dart';

class RespostaAlternativaC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;

    final modelo = ModalRoute.of(context).settings.arguments as Perguntas;

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (ctx, constraints) {
            return Container(
              width: constraints.maxWidth,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: isLandscape
                            ? constraints.maxHeight * 0.4
                            : constraints.maxHeight * 0.3,
                        child: Image.asset(
                          modelo.alternativas3Imagem,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Center(
                          child: Text(
                            modelo.resposta3,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'FredokaOne',
                              fontSize: isLandscape
                                  ? constraints.maxHeight * 0.06
                                  : constraints.maxHeight *
                                      0.04, //isLandscape ? 17 : 16,
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
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: () => {
                      Navigator.of(context).pushReplacementNamed(
                        AppRoutes.NUMERO_PERGUNTAS,
                        arguments: modelo,
                      ),
                    },
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
                        'Escolher Pergunta',
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
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
