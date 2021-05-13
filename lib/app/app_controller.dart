import 'package:mobx/mobx.dart';

class Controller  {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}