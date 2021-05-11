import 'package:flutter/material.dart';

import 'package:quiz_biblico/core/components/inicio/inicio_tema.dart';
import 'package:quiz_biblico/core/components/inicio/inicio_sobre_imagem.dart';
import 'package:quiz_biblico/core/components/inicio/inicio_sobre_texto.dart';
import 'package:quiz_biblico/core/components/inicio/inicio_botao_entrar.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    final mediaQuery = MediaQuery.of(context);
    bool isLandscape = mediaQuery.orientation == Orientation.landscape;
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (ctx, constraints) {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (!isLandscape) InicioTema(),
                Column(
                  children: [
                    InicioSobreImagem(
                        isLandscape: isLandscape, constraints: constraints),
                    InicioSobreTexto(
                        isLandscape: isLandscape, constraints: constraints),
                  ],
                ),
                InicioBotaoEntrar(
                    isLandscape: isLandscape, constraints: constraints),
              ],
            ),
          );
        }),
      ),
    );
  }
}
