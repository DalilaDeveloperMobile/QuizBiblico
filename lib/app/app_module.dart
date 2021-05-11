// app_module.dart
import 'package:flutter_modular/flutter_modular.dart';

// binds
import 'app_bloc.dart';
import 'modules/inicio/home_bloc';

// routes
import 'modules/inicio/screen/inicio.dart';
import 'modules/numeros/screen/escolher_pergunta.dart';
import 'modules/perguntas/screen/perguntas.dart';
import 'modules/principal_module.dart';
import 'modules/resposta_alternativa_a.dart/screen/resposta_alternativa_a.dart';
import 'modules/resposta_alternativa_b.dart/screen/resposta_alternativa_b.dart';
import 'modules/resposta_alternativa_c.dart/screen/resposta_alternativa_c.dart';


class AppModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    Bind((i) => AppBloc()),
    Bind((i) => HomeBloc()),
  
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (context, args) => Inicio()),
     ChildRoute('/numeros', child: (context, args) => EscolherPergunta()),
    ChildRoute('/perguntas', child: (context, args) => PerguntasRespostas()),
    ChildRoute('/respostaAlternativaA',
        child: (context, args) => RespostaAlternativaA()),
    ChildRoute('/respostaAlternativaB',
        child: (context, args) => RespostaAlternativaB()),
    ChildRoute('/respostaAlternativaC',
        child:  (context, args) => RespostaAlternativaC()),
    ModuleRoute('/home', module: PrincipalModule()),
  ];
}
