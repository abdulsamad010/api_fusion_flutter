import 'package:api_fusion_flutter/features/get/get_screen.dart';
import 'package:api_fusion_flutter/features/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'features/delete/delete_bloc.dart';
import 'features/get/get_bloc.dart';
import 'features/home/home_screen.dart';
import 'features/post/post_bloc.dart';
import 'features/put/put_bloc.dart';

void main() async{
  print("calling .evv load");
  await dotenv.load(fileName: ".env");
  print("loaded");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context){
            return HomeBloc();
          }),
          BlocProvider(create: (context){
            return GetBloc();
          }),
          BlocProvider(create: (context){
            return PostBloc();
          }),
          BlocProvider(create: (context){
            return PutBloc();
          }),
          BlocProvider(create: (context){
            return DeleteBloc();
          })
        ],
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:HomeScreen()
            ));
  }
}
