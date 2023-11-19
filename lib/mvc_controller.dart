import 'package:mvc_pattern/mvc_pattern.dart';
import 'mvc_model.dart';

class Controller extends ControllerMVC {
  factory Controller() {
    if (_this == null) _this = Controller._();
    return _this;
  }
  // I don't understand how to fix this; tried a few different things
  static Controller? _this;
    //A value of type 'Controller?' can't be returned from the constructor 'Controller' because it has a return type of 'Controller'.
  // static Controller _this;
    // The non-nullable variable '_this' must be initialized.
  //static late Controller _this;
    // Field '_this' has not been initialized.
  //static Controller _this = 0 as Controller;
    // Expected a value of type 'Controller', but got one of type 'int'
  Controller._();

  int get counter => Model.counter;
  void incrementCounter() {
    Model.incrementCounter();
  }

  void decrementCounter() {
    Model.decrementCounter();
  }
}