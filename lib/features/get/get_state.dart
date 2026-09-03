import 'package:api_fusion_flutter/core/models/book_model.dart';
import 'package:api_fusion_flutter/core/models/dog_model.dart';
import 'package:api_fusion_flutter/core/models/joke_model.dart';
import 'package:api_fusion_flutter/core/models/meal_model.dart';
import 'package:api_fusion_flutter/core/models/pokemon_model.dart';
import 'package:api_fusion_flutter/core/models/product_model.dart';
import 'package:api_fusion_flutter/core/models/random_user_model.dart';
import 'package:api_fusion_flutter/core/models/weather_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GetState {
  final WeatherModel? data0;
  final JokeModel? data1;
  final PokemonModel? data2;
  final BookModel? data3;
  final MealModel? data4;
  final DogModel? data5;
  final RandomUserModel? data6;
  final ProductModel? data7;

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

  GetState({this.data0,this.data1,this.data2,this.data3,this.data4,this.data5,this.data6,this.data7});
}