import 'package:flutter_application_test/model/simple_model.dart';
import 'package:flutter_application_test/view/interface_class.dart';

class SimplePresenter 
{
  late SimpleModel _simpleModel;
  late InterfaceClass _interfaceClass;
  SimplePresenter(InterfaceClass simpleView){
    _simpleModel = SimpleModel();
    _interfaceClass = simpleView;
  }
  void add(a,b){
    double result = _simpleModel.addition(a, b);
    _interfaceClass.updateViewResult(result);
  }
}