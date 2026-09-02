import 'package:api_fusion_flutter/features/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc() :super(HomeState()){

    on<ChangeScreen>((event,emit){
      emit(
          HomeState(
              currentIndex:event.index
          )
      );
    });

}
}