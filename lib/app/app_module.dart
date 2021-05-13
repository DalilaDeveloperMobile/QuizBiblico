// app_module.dart
import 'package:flutter_modular/flutter_modular.dart';

// binds
import 'app_controller.dart';
import 'modules/inicio/home_bloc';

// routes
//import 'modules/inicio/screen/inicio.dart';
//import 'modules/numeros/screen/escolher_pergunta.dart';
//import 'modules/perguntas/screen/perguntas.dart';
import 'modules/inicio/screen/inicio.dart';
import 'modules/principal_module.dart';
//import 'modules/resposta_alternativa_a.dart/screen/resposta_alternativa_a.dart';
//import 'modules/resposta_alternativa_b.dart/screen/resposta_alternativa_b.dart';
//import 'modules/resposta_alternativa_c.dart/screen/resposta_alternativa_c.dart';


class AppModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    Bind((i) => Controller()),
    Bind((i) => HomeBloc()),
  
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (context, args) => Inicio()),
    ModuleRoute("/home", module: PrincipalModule()),
  ];
}
