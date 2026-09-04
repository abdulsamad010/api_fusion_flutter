
import 'package:flutter_dotenv/flutter_dotenv.dart';

class PostState {

  final String? status0,status1,status2,status3,status4;


  late final List<String> apiUrls=[
    dotenv.env['DUMMY_JSON_PRODUCT_ADD_URL']!,
    dotenv.env['DUMMY_JSON_POST_ADD_URL']!,
    dotenv.env['DUMMY_JSON_RECIPE_ADD_URL']!,
    dotenv.env['JSON_PLACEHOLDER_POST_URL']!,
    dotenv.env['DUMMY_JSON_TODO_ADD_URL']!,
  ];

  PostState({this.status0,this.status1,this.status2,this.status3,this.status4});
}