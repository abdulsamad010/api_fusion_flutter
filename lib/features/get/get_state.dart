import 'package:api_fusion_flutter/core/models/weather_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GetState {
  final WeatherModel? data;
  late final List<String> apiUrls=[
    dotenv.env['OPEN_METEO_URL']!,
    dotenv.env['JOKE_API_URL']!,
    dotenv.env['POKE_API_URL']!,
    dotenv.env['OPEN_LIBRARY_URL']!,
    dotenv.env['MEAL_DB_URL']!,
    dotenv.env['DOG_API_URL']!,
    dotenv.env['RANDOM_USER_URL']!,
    dotenv.env['DUMMY_JSON_URL']!,
  ];
  GetState({this.data});
}