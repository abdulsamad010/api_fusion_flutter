import 'package:api_fusion_flutter/core/models/weather_model.dart';
import 'package:api_fusion_flutter/core/services/api_services.dart';
import 'package:api_fusion_flutter/features/get/get_event.dart';
import 'package:api_fusion_flutter/features/get/get_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/models/book_model.dart';
import '../../core/models/dog_model.dart';
import '../../core/models/joke_model.dart';
import '../../core/models/meal_model.dart';
import '../../core/models/pokemon_model.dart';
import '../../core/models/product_model.dart';
import '../../core/models/random_user_model.dart';

class GetBloc extends Bloc<GetEvent,GetState>{
  GetBloc() : super(GetState()){

    ApiServices aS=ApiServices();

    on<GetApiData>((event,emit)async{

      final response=await aS.getApi(state.apiUrls[event.index]);


      if(response!="exception" || response!="failed") {

        if (event.index == 0) {
          final dataFinal = WeatherModel(
            temperature: response["current"]["temperature_2m"],
            windSpeed: response["current"]["wind_speed_10m"],
            location: "Islamabad",
          );

          print("data: $dataFinal");

          emit(
            GetState(
              data0: dataFinal,
            ),
          );
        } else if (event.index == 1) {
          final dataFinal = JokeModel(
            joke: response["joke"],
          );
          print("data: $dataFinal");

          emit(
            GetState(
              data1: dataFinal,
            ),
          );
        } else if (event.index == 2) {
          final dataFinal = PokemonModel(
            name: response["name"],
            image: response["sprites"]["front_default"],
          );
          print("data: $dataFinal");

          emit(
            GetState(
              data2: dataFinal,
            ),
          );
        } else if (event.index == 3) {
          final dataFinal = BookModel(
            title: response["docs"][0]["title"],
            author: response["docs"][0]["author_name"][0],
          );
          print("data: $dataFinal");

          emit(
            GetState(
              data3: dataFinal,
            ),
          );
        } else if (event.index == 4) {
          final dataFinal = MealModel(
            name: response["meals"][0]["strMeal"],
            image: response["meals"][0]["strMealThumb"],
          );
          print("data: $dataFinal");

          emit(
            GetState(
              data4: dataFinal,
            ),
          );
        } else if (event.index == 5) {
          final dataFinal = DogModel(
            image: response["message"],
          );
          print("data: $dataFinal");

          emit(
            GetState(
              data5: dataFinal,
            ),
          );
        } else if (event.index == 6) {
          final dataFinal = RandomUserModel(
            name:
            "${response["results"][0]["name"]["first"]} ${response["results"][0]["name"]["last"]}",
            email: response["results"][0]["email"],
            image: response["results"][0]["picture"]["large"],
          );
          print("data: $dataFinal");

          emit(
            GetState(
              data6: dataFinal,
            ),
          );
        } else if (event.index == 7) {
          final dataFinal = ProductModel(
            title: response["title"],
            price: response["price"],
          );
          print("data: $dataFinal");

          emit(
            GetState(
              data7: dataFinal,
            ),
          );
        }
    }});

  }
}