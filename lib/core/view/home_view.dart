import 'package:flutter/material.dart';
import 'package:flutter_application_test/core/intent/base_action.dart';
import 'package:flutter_application_test/core/model/base_model.dart';
import 'package:get/get.dart';


abstract class HomeView<T extends BaseAction> extends StatelessWidget {
  const HomeView({super.key});

  T get action => Get.find<T>();
  T get init;
  Widget render(BaseModel);
  @override
  Widget build(BuildContext context) {
    Get.put(init);
    return GetBuilder(builder: (controller) => Obx(() =>render(action.state.value)));
  }
}