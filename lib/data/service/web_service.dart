import 'package:flutter_application_test/constant/constant.dart';
import 'package:http/http.dart' as http;
class WebService {
  Future<dynamic> getAgent() async{
    final response = await http.get(Uri.parse(API_URL));
    return response;
      
  }
}