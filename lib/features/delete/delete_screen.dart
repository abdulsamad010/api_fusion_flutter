import 'package:api_fusion_flutter/features/delete/delete_bloc.dart';
import 'package:api_fusion_flutter/features/delete/delete_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'delete_state.dart';

class DeleteScreen extends StatefulWidget {
  const DeleteScreen({super.key});

  @override
  State<DeleteScreen> createState() => _DeleteScreenState();
}

class _DeleteScreenState extends State<DeleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.green,
                    Colors.white,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.centerRight,
                ),
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
                    Text(
                      "Delete APIs",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Delete resources",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 4),
                    Icon(
                      Icons.delete_forever_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(height: 8),

                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Your Items",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  "3 Items",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 8),

                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                  ),
                                ],
                                color: Colors.white,
                              ),

                              child: BlocBuilder<DeleteBloc, DeleteState>(
                                builder: (context, state) {
                                  return state.status0 == null
                                      ? Row(
                                        children: [




                                          ClipOval(
                                            child: Container(
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                color: Colors.greenAccent,
                                              ),
                                              child: Icon(
                                                Icons.pages_sharp,
                                                color: Colors.green,size: 40,
                                              ),
                                            ),
                                          ),


                                          SizedBox(width: 8,),


                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Product Post",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                                Text("Complete API Integration",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),),
                                              ],
                                            ),
                                          ),






                                          InkWell(
                                            onTap: () async {
                                              context.read<DeleteBloc>().add(
                                                DeleteApi0Data(index: 0),
                                              );

                                              await Future.delayed(
                                                Duration(seconds: 5),
                                              );

                                              context.read<DeleteBloc>().add(DeleteReset());
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(2),
                                                color: Colors.black12,
                                              ),
                                              child: Icon(
                                                Icons.delete_forever_outlined,
                                                color: Colors.red,size: 40,
                                              ),
                                            ),
                                          ),

                                        ],
                                      )
                                      : Center(
                                    child: state.status0 == "loading"
                                        ? CircularProgressIndicator(
                                      color: Colors.blueAccent,
                                    )
                                        : state.status0 == "failed"
                                        ? Text("Failed To Delete, Try again in 5sec",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),)
                                        : state.status0 == "success"
                                        ? Text(
                                      "Deleted Successfully, Delete again in 5sec",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),
                                    )
                                        : state.status0 ==
                                        "exception"
                                        ? Text(
                                      "Failed, Exception occurred!!!, Try again in 5sec",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),
                                    )
                                        : SizedBox(),
                                  );
                                },
                              ),
                            ),








                            SizedBox(height: 8),

                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                  ),
                                ],
                                color: Colors.white,
                              ),

                              child: BlocBuilder<DeleteBloc, DeleteState>(
                                builder: (context, state) {
                                  return state.status1 == null
                                      ? Row(
                                    children: [




                                      ClipOval(
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent,
                                          ),
                                          child: Icon(
                                            Icons.perm_identity,
                                            color: Colors.green,size: 40,
                                          ),
                                        ),
                                      ),


                                      SizedBox(width: 8,),


                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("User Delete",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                            Text("Complete API Integration",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),),
                                          ],
                                        ),
                                      ),






                                      InkWell(
                                        onTap: () async {
                                          context.read<DeleteBloc>().add(
                                            DeleteApi1Data(index: 1),
                                          );

                                          await Future.delayed(
                                            Duration(seconds: 5),
                                          );

                                          context.read<DeleteBloc>().add(DeleteReset());
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(2),
                                            color: Colors.black12,
                                          ),
                                          child: Icon(
                                            Icons.delete_forever_outlined,
                                            color: Colors.red,size: 40,
                                          ),
                                        ),
                                      ),

                                    ],
                                  )
                                      : Center(
                                    child: state.status1 == "loading"
                                        ? CircularProgressIndicator(
                                      color: Colors.blueAccent,
                                    )
                                        : state.status1 == "failed"
                                        ? Text("Failed To Delete, Try again in 5sec",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),)
                                        : state.status1 == "success"
                                        ? Text(
                                      "Deleted Successfully, Delete again in 5sec",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),
                                    )
                                        : state.status1 ==
                                        "exception"
                                        ? Text(
                                      "Failed, Exception occurred!!!, Try again in 5sec",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),
                                    )
                                        : SizedBox(),
                                  );
                                },
                              ),
                            ),















                            SizedBox(height: 8),

                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                  ),
                                ],
                                color: Colors.white,
                              ),

                              child: BlocBuilder<DeleteBloc, DeleteState>(
                                builder: (context, state) {
                                  return state.status2 == null
                                      ? Row(
                                    children: [




                                      ClipOval(
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Colors.greenAccent,
                                          ),
                                          child: Icon(
                                            Icons.padding_outlined,
                                            color: Colors.green,size: 40,
                                          ),
                                        ),
                                      ),


                                      SizedBox(width: 8,),


                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Json Placeholder Post",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                            Text("Complete API Integration",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),),
                                          ],
                                        ),
                                      ),






                                      InkWell(
                                        onTap: () async {
                                          context.read<DeleteBloc>().add(
                                            DeleteApi2Data(index: 2),
                                          );

                                          await Future.delayed(
                                            Duration(seconds: 5),
                                          );

                                          context.read<DeleteBloc>().add(DeleteReset());
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(2),
                                            color: Colors.black12,
                                          ),
                                          child: Icon(
                                            Icons.delete_forever_outlined,
                                            color: Colors.red,size: 40,
                                          ),
                                        ),
                                      ),

                                    ],
                                  )
                                      : Center(
                                    child: state.status2 == "loading"
                                        ? CircularProgressIndicator(
                                      color: Colors.blueAccent,
                                    )
                                        : state.status2 == "failed"
                                        ? Text("Failed To Delete, Try again in 5sec",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),)
                                        : state.status2 == "success"
                                        ? Text(
                                      "Deleted Successfully, Delete again in 5sec",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),
                                    )
                                        : state.status2 ==
                                        "exception"
                                        ? Text(
                                      "Failed, Exception occurred!!!, Try again in 5sec",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey),
                                    )
                                        : SizedBox(),
                                  );
                                },
                              ),
                            ),









                          ],
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