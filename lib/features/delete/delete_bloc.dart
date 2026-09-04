import 'package:api_fusion_flutter/core/services/api_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'delete_event.dart';
import 'delete_state.dart';

class DeleteBloc extends Bloc<DeleteEvent,DeleteState>{
  DeleteBloc() : super(DeleteState()){

    ApiServices aS=ApiServices();


    on<DeleteReset>((event, emit) {
      emit(DeleteState(
        status0: null,
        status1: null,
        status2: null,
      ));
    });


    on<DeleteApi0Data>((event,emit)async {
      emit(
          DeleteState(
              status0: "loading"
          )
      );




      final response1 = await aS.deleteApi(state.apiUrls[event.index]);

      emit(
          DeleteState(
              status0: response1
          )
      );
    });





    on<DeleteApi1Data>((event,emit)async {
      emit(
          DeleteState(
              status1: "loading"
          )
      );

      final response1 = await aS.deleteApi(state.apiUrls[event.index],);

      emit(
          DeleteState(
              status1: response1
          )
      );


    });







    on<DeleteApi2Data>((event,emit)async {
      emit(
          DeleteState(
              status2: "loading"
          )
      );

      final response1 = await aS.deleteApi(state.apiUrls[event.index]);

      emit(
          DeleteState(
              status2: response1
          )
      );
    });


  }}