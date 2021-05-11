import 'package:flutter/material.dart';

import 'screens/resposta_alternativa_c.dart';
import 'screens/resposta_alternativa_b.dart';
import 'screens/resposta_alternativa_a.dart';
import 'screens/perguntas.dart';
import 'screens/escolher_pergunta.dart';
import 'screens/inicio.dart';

import './utils/app_rotas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppRoutes.HOME: (ctx) => Inicio(),
        AppRoutes.NUMERO_PERGUNTAS: (ctx) => EscolherPergunta(),
        AppRoutes.PERGUNTAS: (ctx) => PerguntasRespostas(),
        AppRoutes.ALTERNATIVA1: (ctx) => RespostaAlternativaA(),
        AppRoutes.ALTERNATIVA2: (ctx) => RespostaAlternativaB(),
        AppRoutes.ALTERNATIVA3: (ctx) => RespostaAlternativaC(),
      },
    );
  }
}
