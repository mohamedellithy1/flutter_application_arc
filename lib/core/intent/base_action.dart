import 'package:flutter_application_test/core/model/base_model.dart';
import 'package:get/get.dart';

abstract class BaseAction < T extends BaseModel> extends GetxController {
  late final Rx<T> _state;
  Rx<T> get state => _state;

  set state(Rx<T> value) {
    _state = value;
  }
  T get intitState;
  
  @override
  void onInit() {
    _state = Rx<T>(intitState); 
    super.onInit();
  }

}