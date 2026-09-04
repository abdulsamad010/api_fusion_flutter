import 'package:api_fusion_flutter/core/services/api_services.dart';
import 'package:api_fusion_flutter/features/post/post_event.dart';
import 'package:api_fusion_flutter/features/post/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostBloc extends Bloc<PostEvent,PostState>{
  PostBloc() : super(PostState()){

    ApiServices aS=ApiServices();

    on<PostApi0Data>((event,emit)async {
      emit(
          PostState(
              status0: "loading"
          )
      );

      final response1 = await aS.postApi(state.apiUrls[event.index],
          {
            "title":event.pTitle,
            "price":event.pPrice
          });

      emit(
        PostState(
          status0: response1
        )
      );
    });





      on<PostApi1Data>((event,emit)async {
        emit(
            PostState(
                status1: "loading"
            )
        );

        final response1 = await aS.postApi(state.apiUrls[event.index],
            {
              "Title":event.pTitle,
              "Body":event.pBody,
              "userId":5
            });

        emit(
            PostState(
                status1: response1
            )
        );


    });







      on<PostApi2Data>((event,emit)async {
        emit(
            PostState(
                status2: "loading"
            )
        );

        final response1 = await aS.postApi(state.apiUrls[event.index],
            {
              "name":event.recipe,
            });

        emit(
            PostState(
                status2: response1
            )
        );
      });




      on<PostApi3Data>((event,emit)async {
        emit(
            PostState(
                status3: "loading"
            )
        );

        final response1 = await aS.postApi(state.apiUrls[event.index],
            {
              "title":event.title,
              "body":event.body,
              "userId":1
            });

        emit(
            PostState(
                status3: response1
            )
        );
      });





      on<PostApi4Data>((event,emit)async {
        emit(
            PostState(
                status4: "loading"
            )
        );

        final response1 = await aS.postApi(state.apiUrls[event.index],
            {
              "todo":event.todo,
              "completed":false,
              "userId":5
            });

        emit(
            PostState(
                status4: response1
            )
        );
      });

}}