import 'package:api_fusion_flutter/core/models/weather_model.dart';
import 'package:api_fusion_flutter/core/services/api_services.dart';
import 'package:api_fusion_flutter/features/get/get_event.dart';
import 'package:api_fusion_flutter/features/get/get_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetBloc extends Bloc<GetEvent,GetState>{
  GetBloc() : super(GetState(data: null)){

    ApiServices aS=ApiServices();

    on<GetApiData>((event,emit)async{

      final response=await aS.getApi(state.apiUrls[event.index]);

      print("data: $response");

      if(response!="exception" || response!="failed") {

        final data1=WeatherModel(
          temperature: response["current"]["temperature_2m"],
          windSpeed: response["current"]["wind_speed_10m"],
          location: "Islamabad",
        );

        print("data: $data1");
        emit(
        GetState(
          data:data1
        )
      );
      }
      print("data: $response");
    });

  }
}