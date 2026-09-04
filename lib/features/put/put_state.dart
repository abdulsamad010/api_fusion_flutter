
import 'package:flutter_dotenv/flutter_dotenv.dart';

class PutState {

  final String? status0,status1,status2,status3,status4;


  late final List<String> apiUrls = [
    dotenv.env['DUMMY_JSON_PRODUCT_UPDATE_URL']!,
    dotenv.env['DUMMY_JSON_USER_UPDATE_URL']!,
    dotenv.env['DUMMY_JSON_POST_UPDATE_URL']!,
    dotenv.env['JSON_PLACEHOLDER_POST_UPDATE_URL']!,
  ];

  PutState({this.status0,this.status1,this.status2,this.status3,this.status4});
}