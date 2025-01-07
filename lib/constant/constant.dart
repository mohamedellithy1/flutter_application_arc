// class Constant {
//   Constant._(); // private class 

// }
import 'package:flutter_application_test/data/service/web_service.dart';

const String BASE_URL = "https://valorant-api.com";
const String METHOD = "/v1/agents";
const String API_URL = BASE_URL + METHOD;
final WebService apiProvider = WebService();
