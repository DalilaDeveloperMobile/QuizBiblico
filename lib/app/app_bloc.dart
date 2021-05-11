import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart' show Disposable;

// In Modular, `Disposable` classes are automatically disposed when out of the module scope.

class AppBloc extends Disposable {
  final controller = StreamController();

  @override
  void dispose() {
    controller.close();
  }
}