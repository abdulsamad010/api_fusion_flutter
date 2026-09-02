import 'package:api_fusion_flutter/features/get/get_screen.dart';
import 'package:api_fusion_flutter/features/home/home_bloc.dart';
import 'package:api_fusion_flutter/features/home/home_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../delete/delete_screen.dart';
import '../post/post_screen.dart';
import '../put/put_screen.dart';
import 'home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List screens=[
    GetScreen(),
    PostScreen(),
    PutScreen(),
    DeleteScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc,HomeState>(
        builder: (context,state){
          return Scaffold(

            body: screens[state.currentIndex],
            bottomNavigationBar: BottomNavigationBar(backgroundColor:Colors.white,items: [
              BottomNavigationBarItem(icon: Icon(Icons.now_widgets_outlined),label: "Get"),
              BottomNavigationBarItem(icon: Icon(Icons.send),label: "Post"),
              BottomNavigationBarItem(icon: Icon(Icons.edit),label: "Put"),
              BottomNavigationBarItem(icon: Icon(Icons.delete_forever_outlined),label: "Delete")
            ],
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.purple,
              currentIndex: state.currentIndex,
              onTap: (index){

                context.read<HomeBloc>().add(ChangeScreen(index: index));

              },
            ),
          );});
  }
}
