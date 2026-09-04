import 'package:api_fusion_flutter/features/put/put_bloc.dart';
import 'package:api_fusion_flutter/features/put/put_event.dart';
import 'package:api_fusion_flutter/features/put/put_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widgets/custom_text_field.dart';

class PutScreen extends StatefulWidget {
  const PutScreen({super.key});

  @override
  State<PutScreen> createState() => _PutScreenState();
}

class _PutScreenState extends State<PutScreen> {


  final formKey0=GlobalKey<FormState>();
  final formKey1=GlobalKey<FormState>();
  final formKey2=GlobalKey<FormState>();
  final formKey3=GlobalKey<FormState>();
  final formKey4=GlobalKey<FormState>();


  // ==================== PRODUCT UPDATE ====================

  TextEditingController pIdController = TextEditingController();
  TextEditingController pTController = TextEditingController();
  TextEditingController pPController = TextEditingController();

  String? pIdValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter product ID";
    }
    return null;
  }

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


// ==================== USER UPDATE ====================

  TextEditingController uIdController = TextEditingController();
  TextEditingController uLNController = TextEditingController();
  TextEditingController uFNController = TextEditingController();

  String? uIdValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter user ID";
    }
    return null;
  }

  String? uLNValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter Last name";
    }
    return null;
  }

  String? uFNValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter First name";
    }
    return null;
  }



// ==================== DUMMYJSON POST UPDATE ====================

  TextEditingController dPIdController = TextEditingController();
  TextEditingController dPTController = TextEditingController();
  TextEditingController dPBController = TextEditingController();

  String? dPIdValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter post ID";
    }
    return null;
  }

  String? dPTValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter post title";
    }
    return null;
  }

  String? dPBValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter post body";
    }
    return null;
  }


// ==================== JSONPLACEHOLDER POST UPDATE ====================

  TextEditingController jPIdController = TextEditingController();
  TextEditingController jPTController = TextEditingController();
  TextEditingController jPBController = TextEditingController();

  String? jPIdValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter post ID";
    }
    return null;
  }

  String? jPTValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter post title";
    }
    return null;
  }

  String? jPBValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter post body";
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
                    Colors.black,Colors.redAccent,Colors.white
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
                    Text("Put APIs",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                    SizedBox(height: 4,),
                    Text("Update resources",style: TextStyle(color: Colors.grey,fontSize: 12),),
                    SizedBox(height: 4,),
                    Icon(Icons.edit_road,color: Colors.white,size: 35,),
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
                                      Text("DummyJSON | Update Product",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                      SizedBox(height: 6,),

                                      CustomTextField(type: TextInputType.text,label: "Enter Product ID", icon: Icon(Icons.drive_file_rename_outline), iconColor: Colors.orangeAccent, con: pIdController, val: pIdValidator),
                                      SizedBox(height: 8,),
                                      CustomTextField(type: TextInputType.text,label: "Enter Product Title", icon: Icon(Icons.multitrack_audio_outlined), iconColor: Colors.orangeAccent, con: pTController, val: pTValidator),
                                      SizedBox(height: 8,),
                                      CustomTextField(type: TextInputType.text,label: "Enter Product Price", icon: Icon(Icons.price_change), iconColor: Colors.orangeAccent, con: pPController, val: pPValidator),
                                      SizedBox(height: 8,),

                                      ElevatedButton(onPressed: (){
                                        if(formKey0.currentState!.validate()) {
                                          context.read<PutBloc>().add(PutApi0Data(
                                              index: 0,
                                              id:pIdController.text,
                                              title: pPController.text,
                                              price: pTController.text));
                                        }}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [

                                          Expanded(child: Text("Submit",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                                          Icon(Icons.arrow_forward,color: Colors.white,)
                                        ],
                                      )),

                                      SizedBox(height: 8,),

                                      Center(
                                        child: BlocBuilder<PutBloc,PutState>(builder: (context,state){

                                          if(state.status0=="loading"){
                                            return CircularProgressIndicator(color: Colors.blueAccent,);
                                          }
                                          else if(state.status0=="failed"){
                                            return Text("Failed To Post");
                                          }
                                          else if(state.status0=="success"){
                                            return Text("Post Edited Successfully");
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
                                        Text("DummyJSON | Update user",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                        SizedBox(height: 6,),

                                        CustomTextField(type: TextInputType.text,label: "Enter User Last Name", icon: Icon(Icons.tsunami_rounded), iconColor: Colors.redAccent, con: uLNController, val: uLNValidator),
                                        SizedBox(height: 8,),

                                        ElevatedButton(onPressed: (){
                                          if(formKey1.currentState!.validate()) {
                                            context.read<PutBloc>().add(PutApi1Data(
                                                index: 1,
                                                lastName: uLNController.text));
                                          }}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [

                                            Expanded(child: Text("Submit",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                                            Icon(Icons.arrow_forward,color: Colors.white,)
                                          ],
                                        )),

                                        SizedBox(height: 8,),

                                        Center(
                                          child: BlocBuilder<PutBloc,PutState>(builder: (context,state){

                                            if(state.status1=="loading"){
                                              return CircularProgressIndicator(color: Colors.blueAccent,);
                                            }
                                            else if(state.status1=="failed"){
                                              return Text("Failed update Post");
                                            }
                                            else if(state.status1=="success"){
                                              return Text("Post updated Successfully");
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
                                        Text("DummyJSON | Update Post",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                        SizedBox(height: 6,),

                                        CustomTextField(type: TextInputType.text,label: "Enter Post Title", icon: Icon(Icons.soup_kitchen), iconColor: Colors.orangeAccent, con: dPTController, val: dPTValidator),
                                        SizedBox(height: 8,),
                                        CustomTextField(type: TextInputType.text,label: "Enter Post Body", icon: Icon(Icons.soup_kitchen), iconColor: Colors.orangeAccent, con: dPBController, val: dPBValidator),
                                        SizedBox(height: 8,),

                                        ElevatedButton(onPressed: (){
                                          if(formKey2.currentState!.validate()) {
                                            context.read<PutBloc>().add(PutApi2Data(
                                                index: 2, title: dPTController.text,body:dPBController.text));
                                          }}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [

                                            Expanded(child: Text("Submit",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                                            Icon(Icons.arrow_forward,color: Colors.white,)
                                          ],
                                        )),

                                        SizedBox(height: 8,),

                                        Center(
                                          child: BlocBuilder<PutBloc,PutState>(builder: (context,state){

                                            if(state.status2=="loading"){
                                              return CircularProgressIndicator(color: Colors.blueAccent,);
                                            }
                                            else if(state.status2=="failed"){
                                              return Text("Failed To update");
                                            }
                                            else if(state.status2=="success"){
                                              return Text("Post updated Successfully");
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
                                        Text("JSONPlaceholder | Update Post",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                        SizedBox(height: 6,),

                                        CustomTextField(type: TextInputType.text,label: "Enter Post Title", icon: Icon(Icons.align_vertical_top), iconColor: Colors.purpleAccent, con: jPTController, val: jPTValidator),
                                        SizedBox(height: 8,),
                                        CustomTextField(type: TextInputType.text,label: "Enter Post Body", icon: Icon(Icons.border_bottom), iconColor: Colors.purpleAccent, con: jPBController, val: jPBValidator),
                                        SizedBox(height: 8,),

                                        ElevatedButton(onPressed: (){
                                          if(formKey3.currentState!.validate()) {
                                            context.read<PutBloc>().add(PutApi3Data(
                                                index: 3,
                                                title: jPTController.text,
                                                body: jPBController.text));
                                          }}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [

                                            Expanded(child: Text("Submit",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)),
                                            Icon(Icons.arrow_forward,color: Colors.white,)
                                          ],
                                        )),

                                        SizedBox(height: 8,),

                                        Center(
                                          child: BlocBuilder<PutBloc,PutState>(builder: (context,state){

                                            if(state.status3=="loading"){
                                              return CircularProgressIndicator(color: Colors.blueAccent,);
                                            }
                                            else if(state.status3=="failed"){
                                              return Text("Failed To Update");
                                            }
                                            else if(state.status3=="success"){
                                              return Text("Post updated Successfully");
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
  }
}
