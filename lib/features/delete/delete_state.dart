
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DeleteState {

  final String? status0,status1,status2;


  late final List<String> apiUrls = [
    dotenv.env['DUMMY_JSON_PRODUCT_DELETE_URL']!,
    dotenv.env['DUMMY_JSON_USER_DELETE_URL']!,
    dotenv.env['JSON_PLACEHOLDER_POST_DELETE_URL']!,
  ];

  DeleteState({this.status0,this.status1,this.status2});
}