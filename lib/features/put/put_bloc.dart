import 'package:api_fusion_flutter/core/services/api_services.dart';
import 'package:api_fusion_flutter/features/post/post_event.dart' hide PostApi1Data, PostApi2Data, PostApi3Data, PostApi4Data;
import 'package:api_fusion_flutter/features/post/post_state.dart';
import 'package:api_fusion_flutter/features/put/put_event.dart' hide PostApi0Data;
import 'package:api_fusion_flutter/features/put/put_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PutBloc extends Bloc<PutEvent,PutState>{
  PutBloc() : super(PutState()){

    ApiServices aS=ApiServices();

    on<PutApi0Data>((event,emit)async {
      emit(
          PutState(
              status0: "loading"
          )
      );

      final url = "${state.apiUrls[event.index]}/${event.id}";


      final response1 = await aS.putApi(url,
          {
            "title":event.title,
            "price":event.price
          });

      emit(
          PutState(
              status0: response1
          )
      );
    });





    on<PutApi1Data>((event,emit)async {
      emit(
          PutState(
              status1: "loading"
          )
      );

      final response1 = await aS.putApi(state.apiUrls[event.index],
          {
            "lastName":event.lastName,
          });

      emit(
          PutState(
              status1: response1
          )
      );


    });







    on<PutApi2Data>((event,emit)async {
      emit(
          PutState(
              status2: "loading"
          )
      );

      final response1 = await aS.putApi(state.apiUrls[event.index],
          {
            "title":event.title,
            "body":event.body
          });

      emit(
          PutState(
              status2: response1
          )
      );
    });




    on<PutApi3Data>((event,emit)async {
      emit(
          PutState(
              status3: "loading"
          )
      );

      final response1 = await aS.putApi(state.apiUrls[event.index],
          {
            "id":1,
            "title":event.title,
            "body":event.body,
          });

      emit(
          PutState(
              status3: response1
          )
      );
    });

  }}