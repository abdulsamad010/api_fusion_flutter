import 'package:api_fusion_flutter/core/widgets/custom_text_field.dart';
import 'package:api_fusion_flutter/features/post/post_bloc.dart';
import 'package:api_fusion_flutter/features/post/post_event.dart';
import 'package:api_fusion_flutter/features/post/post_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  final formKey0=GlobalKey<FormState>();
  final formKey1=GlobalKey<FormState>();
  final formKey2=GlobalKey<FormState>();
  final formKey3=GlobalKey<FormState>();
  final formKey4=GlobalKey<FormState>();


  TextEditingController pTController = TextEditingController();
  TextEditingController pPController = TextEditingController();

  String? pTValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter product title";
    }
    return null;
  }

  String? pPValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter product price";
    }
    return null;
  }



  TextEditingController poTController = TextEditingController();
  TextEditingController poBController = TextEditingController();

  String? poTValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter post title";
    }
    return null;
  }

  String? poBValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter post body";
    }
    return null;
  }



  TextEditingController rNController = TextEditingController();

  String? rNValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter recipe name";
    }
    return null;
  }


// JSONPlaceholder Post
  TextEditingController jpTController = TextEditingController();
  TextEditingController jpBController = TextEditingController();

  String? jpTValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter post title";
    }
    return null;
  }

  String? jpBValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter post body";
    }
    return null;
  }



  TextEditingController tdController = TextEditingController();

  String? tdValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter todo";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body:SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black,Colors.blue,Colors.white
                  ], begin: Alignment.topRight,end: Alignment.centerRight)
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Post APIs",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                    SizedBox(height: 4,),
                      Text("Create new resources",style: TextStyle(color: Colors.grey,fontSize: 12),),
                    SizedBox(height: 4,),
                    Icon(Icons.schedule_send,color: Colors.white,size: 35,),
                    SizedBox(height: 8,),
                    Expanded(
                      child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                          ),

                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Form(
                                key: formKey0,
                                child: Column(
                                  children:[
                                    Text("DummyJSON | Add Product",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                    SizedBox(height: 6,),

                                    CustomTextField(type: TextInputType.text,label: "Enter Product Name", icon: Icon(Icons.drive_file_rename_outline), iconColor: Colors.orangeAccent, con: pTController, val: pTValidator),
                                    SizedBox(height: 8,),
                                    CustomTextField(type: TextInputType.text,label: "Enter Product Price", icon: Icon(Icons.price_change), iconColor: Colors.orangeAccent, con: pPController, val: pPValidator),
                                    SizedBox(height: 8,),

                                    ElevatedButton(onPressed: (){
                                      if(formKey0.currentState!.validate()) {
                                        context.read<PostBloc>().add(PostApi0Data(
                                            index: 0,
                                            pPrice: pPController.text,
                                            pTitle: pTController.text));
                                      }}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Expanded(child: Text("Submit",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                                        Icon(Icons.arrow_forward,color: Colors.white,)
                                      ],
                                    )),

                                    SizedBox(height: 8,),

                                    Center(
                                      child: BlocBuilder<PostBloc,PostState>(builder: (context,state){

                                        if(state.status0=="loading"){
                                          return CircularProgressIndicator(color: Colors.blueAccent,);
                                        }
                                        else if(state.status0=="failed"){
                                          return Text("Failed To Post");
                                        }
                                        else if(state.status0=="success"){
                                          return Text("Post Created Successfully");
                                        }
                                        else if(state.status0=="exception"){
                                          return Text("Failed, Exception occur!!!");
                                        }
                                        else{
                                          return SizedBox();
                                        }
                                      }),
                                    ),
                                  ]
                                ),
                              ),



                              SizedBox(height: 8,),
                              Divider(),
                              SizedBox(height: 8,),



                          Form(
                            key: formKey1,
                            child: Column(
                              children:[
                              Text("DummyJSON | Add Post",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                              SizedBox(height: 6,),

                              CustomTextField(type: TextInputType.text,label: "Enter Post Title", icon: Icon(Icons.title), iconColor: Colors.redAccent, con: poTController, val: poTValidator),
                              SizedBox(height: 8,),
                              CustomTextField(type: TextInputType.text,label: "Enter Post Body", icon: Icon(Icons.border_bottom), iconColor: Colors.redAccent, con: poBController, val: poBValidator),
                              SizedBox(height: 8,),

                              ElevatedButton(onPressed: (){
                                if(formKey1.currentState!.validate()) {
                                  context.read<PostBloc>().add(PostApi1Data(
                                      index: 1,
                                      pTitle: poTController.text,
                                      pBody: poBController.text));
                                }}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Expanded(child: Text("Submit",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                                  Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              )),

                              SizedBox(height: 8,),

                              Center(
                                child: BlocBuilder<PostBloc,PostState>(builder: (context,state){

                                  if(state.status1=="loading"){
                                    return CircularProgressIndicator(color: Colors.blueAccent,);
                                  }
                                  else if(state.status1=="failed"){
                                    return Text("Failed To Post");
                                  }
                                  else if(state.status1=="success"){
                                    return Text("Post Created Successfully");
                                  }
                                  else if(state.status1=="exception"){
                                    return Text("Failed, Exception occur!!!");
                                  }
                                  else{
                                    return SizedBox();
                                  }
                                }),
                              ),
                          ])),



                              SizedBox(height: 8,),
                              Divider(),
                              SizedBox(height: 8,),




                          Form(
                            key: formKey2,
                            child: Column(
                              children:[
                              Text("DummyJSON | Add Recipe",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                              SizedBox(height: 6,),

                              CustomTextField(type: TextInputType.text,label: "Enter Recipe Name", icon: Icon(Icons.soup_kitchen), iconColor: Colors.orangeAccent, con: rNController, val: rNValidator),
                              SizedBox(height: 8,),

                              ElevatedButton(onPressed: (){
                                if(formKey2.currentState!.validate()) {
                                  context.read<PostBloc>().add(PostApi2Data(
                                      index: 2, recipe: rNController.text));
                                }}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Expanded(child: Text("Submit",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                                  Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              )),

                              SizedBox(height: 8,),

                              Center(
                                child: BlocBuilder<PostBloc,PostState>(builder: (context,state){

                                  if(state.status2=="loading"){
                                    return CircularProgressIndicator(color: Colors.blueAccent,);
                                  }
                                  else if(state.status2=="failed"){
                                    return Text("Failed To Post");
                                  }
                                  else if(state.status2=="success"){
                                    return Text("Post Created Successfully");
                                  }
                                  else if(state.status2=="exception"){
                                    return Text("Failed, Exception occur!!!");
                                  }
                                  else{
                                    return SizedBox();
                                  }
                                }),
                              ),
                              ])),



                              SizedBox(height: 8,),
                              Divider(),
                              SizedBox(height: 8,),






                          Form(
                            key: formKey3,
                            child: Column(
                              children:[
                              Text("JSONPlaceholder | Add Post",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                              SizedBox(height: 6,),

                              CustomTextField(type: TextInputType.text,label: "Enter Post Title", icon: Icon(Icons.align_vertical_top), iconColor: Colors.purpleAccent, con: jpTController, val: jpTValidator),
                              SizedBox(height: 8,),
                              CustomTextField(type: TextInputType.text,label: "Enter Post Body", icon: Icon(Icons.border_bottom), iconColor: Colors.purpleAccent, con: jpBController, val: jpBValidator),
                              SizedBox(height: 8,),

                              ElevatedButton(onPressed: (){
                                if(formKey3.currentState!.validate()) {
                                  context.read<PostBloc>().add(PostApi3Data(
                                      index: 3,
                                      title: poTController.text,
                                      body: poBController.text));
                                }}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Expanded(child: Text("Submit",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                                  Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              )),

                              SizedBox(height: 8,),

                              Center(
                                child: BlocBuilder<PostBloc,PostState>(builder: (context,state){

                                  if(state.status3=="loading"){
                                    return CircularProgressIndicator(color: Colors.blueAccent,);
                                  }
                                  else if(state.status3=="failed"){
                                    return Text("Failed To Post");
                                  }
                                  else if(state.status3=="success"){
                                    return Text("Post Created Successfully");
                                  }
                                  else if(state.status3=="exception"){
                                    return Text("Failed, Exception occur!!!");
                                  }
                                  else{
                                    return SizedBox();
                                  }
                                }),
                              ),
                              ])),



                              SizedBox(height: 8,),
                              Divider(),
                              SizedBox(height: 8,),




                          Form(
                            key: formKey4,
                            child: Column(
                              children:[
                              Text("DummyJSON | Add Todo",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                              SizedBox(height: 6,),

                              CustomTextField(type: TextInputType.text,label: "Enter Task to be done", icon: Icon(Icons.calendar_today_outlined), iconColor: Colors.greenAccent, con: tdController, val: tdValidator),
                              SizedBox(height: 8,),

                              ElevatedButton(onPressed: (){
                                if(formKey4.currentState!.validate()) {
                                  context.read<PostBloc>().add(PostApi4Data(
                                      index: 4, todo: tdController.text));
                                }}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Expanded(child: Text("Submit",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                                  Icon(Icons.arrow_forward,color: Colors.white,)
                                ],
                              )),

                              SizedBox(height: 8,),

                              Center(
                                child: BlocBuilder<PostBloc,PostState>(builder: (context,state){

                                  if(state.status4=="loading"){
                                    return CircularProgressIndicator(color: Colors.blueAccent,);
                                  }
                                  else if(state.status4=="failed"){
                                    return Text("Failed To Post");
                                  }
                                  else if(state.status4=="success"){
                                    return Text("Post Created Successfully");
                                  }
                                  else if(state.status4=="exception"){
                                    return Text("Failed, Exception occur!!!");
                                  }
                                  else{
                                    return SizedBox();
                                  }
                                }),
                              ),
                              ])),

                              SizedBox(height: 8,),
                              Divider(),
                              SizedBox(height: 8,),


                            ],
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
}}
