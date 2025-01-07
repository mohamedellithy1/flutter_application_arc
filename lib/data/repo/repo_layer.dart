import 'package:flutter_application_test/data/service/web_service.dart';

class RepoLayer {
  final WebService apiProvider;
  RepoLayer({required this.apiProvider});
  Future<dynamic> getAgent() async {
    return await apiProvider.getAgent();
  }

}