import 'package:flutter_modular/flutter_modular.dart';

//import 'inicio/home_bloc';

import 'inicio/screen/inicio.dart';
import 'numeros/screen/escolher_pergunta.dart';
import 'perguntas/screen/perguntas.dart';
import 'resposta_alternativa_a.dart/screen/resposta_alternativa_a.dart';
import 'resposta_alternativa_b.dart/screen/resposta_alternativa_b.dart';
import 'resposta_alternativa_c.dart/screen/resposta_alternativa_c.dart';

class PrincipalModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
   // Bind((i) => HomeBloc()),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (context, args) => Inicio()),
    ChildRoute("/numeros", child: (context, args) => EscolherPergunta()),
    ChildRoute("/perguntas", child: (context, args) => PerguntasRespostas()),
    ChildRoute("/respostaAlternativaA",
        child: (context, args) => RespostaAlternativaA()),
    ChildRoute("/respostaAlternativaB",
        child: (context, args) => RespostaAlternativaB()),
    ChildRoute("/respostaAlternativaC",
        child:  (context, args) => RespostaAlternativaC()),
  ];
}
