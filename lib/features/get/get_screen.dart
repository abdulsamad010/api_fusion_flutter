import 'package:api_fusion_flutter/features/get/get_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'get_bloc.dart';
import 'get_event.dart';

class GetScreen extends StatefulWidget {
  const GetScreen({super.key});

  @override
  State<GetScreen> createState() => _GetScreenState();
}

class _GetScreenState extends State<GetScreen> {



  final List<String> apiTitles = [
    "Weather",
    "Jokes",
    "Pokémon",
    "Books",
    "Recipes",
    "Dog Images",
    "Random Users",
    "Products",
  ];

  final List<String> apiNames = [
    "Open-Meteo",
    "JokeAPI",
    "PokéAPI",
    "Open Library",
    "TheMealDB",
    "Dog API",
    "Random User",
    "DummyJSON",
  ];

  final List<IconData> apiIcons = [
    Icons.cloud,
    Icons.sentiment_very_satisfied,
    Icons.catching_pokemon,
    Icons.menu_book,
    Icons.restaurant_menu,
    Icons.pets,
    Icons.people,
    Icons.shopping_bag,
  ];

  final List<Color> apiColors = [
    Colors.blue,
    Colors.orange,
    Colors.red,
    Colors.brown,
    Colors.green,
    Colors.purple,
    Colors.teal,
    Colors.indigo,
  ];

  final List<String> optionTitles = [
    "Top",
    "Trending now",
    "250+ Countries",
    "Live Matches",
    "Popular Movies",
    "Astronomy Pic",
    "Latest News",
    "Videos",
  ];

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
                  Colors.black,Colors.deepPurple,Colors.white
                ], begin: Alignment.topRight,end: Alignment.centerRight)
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Welcome back,",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
                    SizedBox(height: 4,),
                    Text("API Dashboard",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                    SizedBox(height: 2,),
                    Text("Live data from around the world",style: TextStyle(color: Colors.grey,fontSize: 12),),
                    SizedBox(height: 12,),
                    Text("Live Services",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
        
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
                        child: ListView.builder(
                            itemCount: apiNames.length,
                            itemBuilder: (context,index){
                                   return  Padding(
                                     padding: const EdgeInsets.fromLTRB(0,0,0,8),
                                     child: Column(
                                       children: [

                                         
                                         Material(
                                           child: InkWell(
                                             onTap: (){
                                               print("calling api");
                                               context.read<GetBloc>().add(GetApiData(index: index));








                                               if(index==0){
                                               showDialog(context: context, builder: (context){
                                                 return AlertDialog(

                                                  title: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text("Weather Details",
                                                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

                                                      Text("Islamabad, Pakistan",
                                                        style: TextStyle(fontSize: 14,
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.grey),),
                                                    ],
                                                  ),

                                                   content: BlocBuilder<GetBloc,GetState>(
                                                     builder: (context,state) {

                                                       if(state.data0 !=null){
                                                       return Column(
                                                         mainAxisSize: MainAxisSize.min,
                                                         children: [
                                                           Container(
                                                             padding: EdgeInsets.all(8),
                                                         decoration: BoxDecoration(
                                                           boxShadow: [
                                                             BoxShadow(
                                                               color: Colors.grey,
                                                               blurRadius: 1
                                                             )
                                                           ],
                                                           color: Colors.white,
                                                           borderRadius: BorderRadius.circular(10),
                                                         ),
                                                         child: Column(
                                                           mainAxisSize: MainAxisSize
                                                               .min,
                                                           children: [

                                                             Row(
                                                               children: [

                                                                 Icon(Icons
                                                                     .theaters_outlined,
                                                                   color: Colors
                                                                       .red,),
                                                                 Expanded(
                                                                   child: Text("${state.data0!.temperature}c",style: TextStyle(
                                                                       fontSize: 16,
                                                                       fontWeight: FontWeight
                                                                           .bold,
                                                                       color: Colors
                                                                           .black),),
                                                                 ),


                                                                 Icon(Icons.wind_power,
                                                                   color: Colors
                                                                       .blueAccent,),

                                                                 Column(
                                                                   children: [
                                                                     Text(
                                                                       "Wind Speed",
                                                                       style: TextStyle(
                                                                           fontSize: 14,
                                                                           fontWeight: FontWeight
                                                                               .bold,
                                                                           color: Colors
                                                                               .grey),),

                                                                     Text("${state.data0!.windSpeed} Km/h",style: TextStyle(
                                                                         fontSize: 16,
                                                                         fontWeight: FontWeight
                                                                             .bold,
                                                                         color: Colors
                                                                             .black),),
                                                                   ],
                                                                 ),
                                                               ],
                                                             ),

                                                             SizedBox(height: 8,),
                                                           ],
                                                         )),

                                                           SizedBox(height: 16,),

                                                           SizedBox(
                                                             width: double.infinity,
                                                             child: ElevatedButton(onPressed: (){
                                                               Navigator.pop(context);
                                                             },
                                                                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent)
                                                                 ,child: Text("Ok",style: TextStyle(
                                                                     fontSize: 16,
                                                                     fontWeight: FontWeight
                                                                         .bold,
                                                                     color: Colors
                                                                         .white),)),
                                                           ),

                                                           ]);
                                                     }
                                                     else if(state.data0==null){
                                                       return SizedBox(height:50,width:50,
                                                           child: Center(child: CircularProgressIndicator(color: Colors.blueAccent,)));
                                                       }
                                                     else{
                                                         return Text("API Failed!!, Exception Occur");
                                                       }
                                                     }
                                                   ),

                                                 );
                                               });}










                                               if(index==1){
                                                 showDialog(context: context, builder: (context){
                                                   return AlertDialog(

                                                     title: Column(
                                                       crossAxisAlignment: CrossAxisAlignment.center,
                                                       children: [
                                                         Text("Here's a Joke",
                                                           style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                                         
                                                         Icon(Icons.tag_faces,color: Colors.orangeAccent,size: 50,)
                                                       ],
                                                     ),

                                                     content: BlocBuilder<GetBloc,GetState>(
                                                         builder: (context,state) {

                                                           if(state.data1 !=null){
                                                             return Column(
                                                                 mainAxisSize: MainAxisSize.min,
                                                                 children: [
                                                                   Container(
                                                                       padding: EdgeInsets.all(8),
                                                                       decoration: BoxDecoration(
                                                                         boxShadow: [
                                                                           BoxShadow(
                                                                               color: Colors.grey,
                                                                               blurRadius: 1
                                                                           )
                                                                         ],
                                                                         color: Colors.white,
                                                                         borderRadius: BorderRadius.circular(10),
                                                                       ),
                                                                       child: Text("${state.data1!.joke}",style: TextStyle(
                                                           fontSize: 16,
                                                           fontWeight: FontWeight
                                                               .bold,
                                                           color: Colors
                                                               .grey),)),

                                                                   SizedBox(height: 16,),

                                                                   SizedBox(
                                                                     width: double.infinity,
                                                                     child: ElevatedButton(onPressed: (){
                                                                       Navigator.pop(context);
                                                                     },
                                                                         style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent)
                                                                         ,child: Text("Ok",style: TextStyle(
                                                                             fontSize: 16,
                                                                             fontWeight: FontWeight
                                                                                 .bold,
                                                                             color: Colors
                                                                                 .white),)),
                                                                   ),

                                                                 ]);
                                                           }
                                                           else if(state.data1==null){
                                                             return SizedBox(height:50,width:50,
                                                                 child: Center(child: CircularProgressIndicator(color: Colors.blueAccent,)));
                                                           }
                                                           else{
                                                             return Text("API Failed!!, Exception Occur");
                                                           }
                                                         }
                                                     ),

                                                   );
                                                 });}












                                               if(index==2){
                                                 showDialog(context: context, builder: (context){
                                                   return AlertDialog(

                                                     title: Column(
                                                       crossAxisAlignment: CrossAxisAlignment.center,
                                                       children: [
                                                         Text("Pokemon Info",
                                                           style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                                         
                                                         Icon(Icons.discord_outlined,color: Colors.red,size: 50)
                                                       ],
                                                     ),

                                                     content: BlocBuilder<GetBloc,GetState>(
                                                         builder: (context,state) {

                                                           if(state.data2 !=null){
                                                             return Column(
                                                                 mainAxisSize: MainAxisSize.min,
                                                                 children: [
                                                                   Container(
                                                                       padding: EdgeInsets.all(8),
                                                                       decoration: BoxDecoration(
                                                                         boxShadow: [
                                                                           BoxShadow(
                                                                               color: Colors.grey,
                                                                               blurRadius: 1
                                                                           )
                                                                         ],
                                                                         color: Colors.white,
                                                                         borderRadius: BorderRadius.circular(10),
                                                                       ),
                                                                       child: Column(
                                                                         mainAxisSize: MainAxisSize
                                                                             .min,
                                                                         children: [

                                                                           Row(
                                                                             children: [

                                                                               Icon(Icons
                                                                                   .electric_bolt,
                                                                                 color: Colors
                                                                                     .yellow,),
                                                                               Expanded(
                                                                                 child: Text("${state.data2!.name}",style: TextStyle(
                                                                                     fontSize: 16,
                                                                                     fontWeight: FontWeight
                                                                                         .bold,
                                                                                     color: Colors
                                                                                         .black),),
                                                                               ),


                                                                               Image.network("${state.data2!.image}")
                                                                             ],
                                                                           ),

                                                                           SizedBox(height: 8,),
                                                                         ],
                                                                       )),

                                                                   SizedBox(height: 16,),

                                                                   SizedBox(
                                                                     width: double.infinity,
                                                                     child: ElevatedButton(onPressed: (){
                                                                       Navigator.pop(context);
                                                                     },
                                                                         style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent)
                                                                         ,child: Text("Ok",style: TextStyle(
                                                                             fontSize: 16,
                                                                             fontWeight: FontWeight
                                                                                 .bold,
                                                                             color: Colors
                                                                                 .white),)),
                                                                   ),

                                                                 ]);
                                                           }
                                                           else if(state.data2==null){
                                                             return SizedBox(height:50,width:50,
                                                                 child: Center(child: CircularProgressIndicator(color: Colors.blueAccent,)));
                                                           }
                                                           else{
                                                             return Text("API Failed!!, Exception Occur");
                                                           }
                                                         }
                                                     ),

                                                   );
                                                 });}














                                               if(index==3){
                                                 showDialog(context: context, builder: (context){
                                                   return AlertDialog(

                                                     title: Text("Book Information",
                                                       style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

                                                     content: BlocBuilder<GetBloc,GetState>(
                                                         builder: (context,state) {

                                                           if(state.data3 !=null){
                                                             return Column(
                                                                 mainAxisSize: MainAxisSize.min,
                                                                 children: [
                                                                   Container(
                                                                       padding: EdgeInsets.all(8),
                                                                       decoration: BoxDecoration(
                                                                         boxShadow: [
                                                                           BoxShadow(
                                                                               color: Colors.grey,
                                                                               blurRadius: 1
                                                                           )
                                                                         ],
                                                                         color: Colors.white,
                                                                         borderRadius: BorderRadius.circular(10),
                                                                       ),
                                                                       child: Column(
                                                                         mainAxisSize: MainAxisSize
                                                                             .min,
                                                                         children: [

                                                                           Row(
                                                                             children: [

                                                                               Column(
                                                                                 children: [
                                                                                   Text("${state.data3!.title}c",style: TextStyle(
                                                                                       fontSize: 16,
                                                                                       fontWeight: FontWeight
                                                                                           .bold,
                                                                                       color: Colors
                                                                                           .black),),
                                                                                   
                                                                                   Icon(Icons.menu_book_rounded,color: Colors.green,size: 50,)
                                                                                 ],
                                                                               ),

                                                                               SizedBox(width: 16,),

                                                                               Column(
                                                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                                                 children: [
                                                                                   Text(
                                                                                     "Author",
                                                                                     style: TextStyle(
                                                                                         fontSize: 14,
                                                                                         fontWeight: FontWeight
                                                                                             .bold,
                                                                                         color: Colors
                                                                                             .green),),

                                                                                   Text("${state.data3!.author}",style: TextStyle(
                                                                                       fontSize: 16,
                                                                                       fontWeight: FontWeight
                                                                                           .bold,
                                                                                       color: Colors
                                                                                           .black),),
                                                                                 ],
                                                                               ),
                                                                             ],
                                                                           ),

                                                                           SizedBox(height: 8,),
                                                                         ],
                                                                       )),

                                                                   SizedBox(height: 16,),

                                                                   SizedBox(
                                                                     width: double.infinity,
                                                                     child: ElevatedButton(onPressed: (){
                                                                       Navigator.pop(context);
                                                                     },
                                                                         style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent)
                                                                         ,child: Text("Ok",style: TextStyle(
                                                                             fontSize: 16,
                                                                             fontWeight: FontWeight
                                                                                 .bold,
                                                                             color: Colors
                                                                                 .white),)),
                                                                   ),

                                                                 ]);
                                                           }
                                                           else if(state.data3==null){
                                                             return SizedBox(height:50,width:50,
                                                                 child: Center(child: CircularProgressIndicator(color: Colors.blueAccent,)));
                                                           }
                                                           else{
                                                             return Text("API Failed!!, Exception Occur");
                                                           }
                                                         }
                                                     ),

                                                   );
                                                 });}














                                               if(index==4){
                                                 showDialog(context: context, builder: (context){
                                                   return AlertDialog(

                                                     title: Column(
                                                       crossAxisAlignment: CrossAxisAlignment.center,
                                                       children: [
                                                         Text("Random Meal",
                                                           style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

                                                         Text("Food is Life",
                                                           style: TextStyle(fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.grey),),
                                                       ],
                                                     ),

                                                     content: BlocBuilder<GetBloc,GetState>(
                                                         builder: (context,state) {

                                                           if(state.data4 !=null){
                                                             return Column(
                                                                 mainAxisSize: MainAxisSize.min,
                                                                 children: [
                                                                   Container(
                                                                       padding: EdgeInsets.all(8),
                                                                       decoration: BoxDecoration(
                                                                         boxShadow: [
                                                                           BoxShadow(
                                                                               color: Colors.grey,
                                                                               blurRadius: 1
                                                                           )
                                                                         ],
                                                                         color: Colors.white,
                                                                         borderRadius: BorderRadius.circular(10),
                                                                       ),
                                                                       child: Column(
                                                                         mainAxisSize: MainAxisSize
                                                                             .min,
                                                                         children: [

                                                                           Row(
                                                                             children: [

                                                                               Icon(Icons
                                                                                   .emoji_food_beverage,
                                                                                 color: Colors
                                                                                     .deepOrange,),
                                                                               Expanded(
                                                                                 child: Text("${state.data4!.name}c",style: TextStyle(
                                                                                     fontSize: 16,
                                                                                     fontWeight: FontWeight
                                                                                         .bold,
                                                                                     color: Colors
                                                                                         .black),),
                                                                               ),

                                                                             ],
                                                                           ),

                                                                           Image.network("${state.data4!.image}"),

                                                                           SizedBox(height: 8,),
                                                                         ],
                                                                       )),

                                                                   SizedBox(height: 16,),

                                                                   SizedBox(
                                                                     width: double.infinity,
                                                                     child: ElevatedButton(onPressed: (){
                                                                       Navigator.pop(context);
                                                                     },
                                                                         style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent)
                                                                         ,child: Text("Ok",style: TextStyle(
                                                                             fontSize: 16,
                                                                             fontWeight: FontWeight
                                                                                 .bold,
                                                                             color: Colors
                                                                                 .white),)),
                                                                   ),

                                                                 ]);
                                                           }
                                                           else if(state.data4==null){
                                                             return SizedBox(height:50,width:50,
                                                                 child: Center(child: CircularProgressIndicator(color: Colors.blueAccent,)));
                                                           }
                                                           else{
                                                             return Text("API Failed!!, Exception Occur");
                                                           }
                                                         }
                                                     ),

                                                   );
                                                 });}












                                               if(index==5){
                                                 showDialog(context: context, builder: (context){
                                                   return AlertDialog(

                                                     title: Column(
                                                       crossAxisAlignment: CrossAxisAlignment.center,
                                                       children: [
                                                         Text("Random Dog",
                                                           style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

                                                         Text("Have a nice day!",
                                                           style: TextStyle(fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.grey),),
                                                       ],
                                                     ),

                                                     content: BlocBuilder<GetBloc,GetState>(
                                                         builder: (context,state) {

                                                           if(state.data5 !=null){
                                                             return Column(
                                                                 mainAxisSize: MainAxisSize.min,
                                                                 children: [
                                                                   Container(
                                                                       padding: EdgeInsets.all(8),
                                                                       decoration: BoxDecoration(
                                                                         boxShadow: [
                                                                           BoxShadow(
                                                                               color: Colors.grey,
                                                                               blurRadius: 1
                                                                           )
                                                                         ],
                                                                         color: Colors.white,
                                                                         borderRadius: BorderRadius.circular(10),
                                                                       ),
                                                                       child: Image.network("${state.data5!.image}")),

                                                                   SizedBox(height: 16,),

                                                                   SizedBox(
                                                                     width: double.infinity,
                                                                     child: ElevatedButton(onPressed: (){
                                                                       Navigator.pop(context);
                                                                     },
                                                                         style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent)
                                                                         ,child: Text("Ok",style: TextStyle(
                                                                             fontSize: 16,
                                                                             fontWeight: FontWeight
                                                                                 .bold,
                                                                             color: Colors
                                                                                 .white),)),
                                                                   ),

                                                                 ]);
                                                           }
                                                           else if(state.data5==null){
                                                             return SizedBox(height:50,width:50,
                                                                 child: Center(child: CircularProgressIndicator(color: Colors.blueAccent,)));
                                                           }
                                                           else{
                                                             return Text("API Failed!!, Exception Occur");
                                                           }
                                                         }
                                                     ),

                                                   );
                                                 });}
















                                               if(index==6){
                                                 showDialog(context: context, builder: (context){
                                                   return AlertDialog(

                                                     title: Column(
                                                       crossAxisAlignment: CrossAxisAlignment.center,
                                                       children: [
                                                         Text("Random User",
                                                           style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

                                                        Icon(Icons.perm_identity,color: Colors.purpleAccent,size: 50,)
                                                       ],
                                                     ),

                                                     content: BlocBuilder<GetBloc,GetState>(
                                                         builder: (context,state) {

                                                           if(state.data6 !=null){
                                                             return Column(
                                                                 mainAxisSize: MainAxisSize.min,
                                                                 children: [
                                                                   Container(
                                                                       padding: EdgeInsets.all(8),
                                                                       decoration: BoxDecoration(
                                                                         boxShadow: [
                                                                           BoxShadow(
                                                                               color: Colors.grey,
                                                                               blurRadius: 1
                                                                           )
                                                                         ],
                                                                         color: Colors.white,
                                                                         borderRadius: BorderRadius.circular(10),
                                                                       ),
                                                                       child: Column(
                                                                         mainAxisSize: MainAxisSize
                                                                             .min,
                                                                         children: [

                                                                           Row(
                                                                             mainAxisAlignment: MainAxisAlignment.start,
                                                                             children: [


                                                                               Icon(Icons.person_pin,
                                                                                 color: Colors
                                                                                     .blueAccent,),
                                                                               Expanded(
                                                                                 child: Text("${state.data6!.name}c",style: TextStyle(
                                                                                     fontSize: 16,
                                                                                     fontWeight: FontWeight
                                                                                         .bold,
                                                                                     color: Colors
                                                                                         .black),),
                                                                               ),


                                                                               Column(
                                                                                 mainAxisAlignment: MainAxisAlignment.start,
                                                                                 children: [
                                                                                   Text(
                                                                                     "28 years",
                                                                                     style: TextStyle(
                                                                                         fontSize: 14,
                                                                                         fontWeight: FontWeight
                                                                                             .bold,
                                                                                         color: Colors
                                                                                             .grey),),

                                                                                   Text("${state.data6!.email}",style: TextStyle(
                                                                                       fontSize: 16,
                                                                                       fontWeight: FontWeight
                                                                                           .bold,
                                                                                       color: Colors
                                                                                           .black),),
                                                                                 ],
                                                                               ),
                                                                             ],
                                                                           ),

                                                                           SizedBox(height: 8,),
                                                                         ],
                                                                       )),

                                                                   SizedBox(height: 16,),

                                                                   SizedBox(
                                                                     width: double.infinity,
                                                                     child: ElevatedButton(onPressed: (){
                                                                       Navigator.pop(context);
                                                                     },
                                                                         style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent)
                                                                         ,child: Text("Ok",style: TextStyle(
                                                                             fontSize: 16,
                                                                             fontWeight: FontWeight
                                                                                 .bold,
                                                                             color: Colors
                                                                                 .white),)),
                                                                   ),

                                                                 ]);
                                                           }
                                                           else if(state.data6==null){
                                                             return SizedBox(height:50,width:50,
                                                                 child: Center(child: CircularProgressIndicator(color: Colors.blueAccent,)));
                                                           }
                                                           else{
                                                             return Text("API Failed!!, Exception Occur");
                                                           }
                                                         }
                                                     ),

                                                   );
                                                 });}















                                               if(index==7){
                                                 showDialog(context: context, builder: (context){
                                                   return AlertDialog(

                                                     title: Column(
                                                       crossAxisAlignment: CrossAxisAlignment.center,
                                                       children: [
                                                         Text("Product Details",
                                                           style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

                                                         Text("Best in the Region",
                                                           style: TextStyle(fontSize: 14,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.grey),),
                                                       ],
                                                     ),

                                                     content: BlocBuilder<GetBloc,GetState>(
                                                         builder: (context,state) {

                                                           if(state.data7 !=null){
                                                             return Column(
                                                                 mainAxisSize: MainAxisSize.min,
                                                                 children: [
                                                                   Container(
                                                                       padding: EdgeInsets.all(8),
                                                                       decoration: BoxDecoration(
                                                                         boxShadow: [
                                                                           BoxShadow(
                                                                               color: Colors.grey,
                                                                               blurRadius: 1
                                                                           )
                                                                         ],
                                                                         color: Colors.white,
                                                                         borderRadius: BorderRadius.circular(10),
                                                                       ),
                                                                       child: Column(
                                                                         mainAxisSize: MainAxisSize
                                                                             .min,
                                                                         children: [

                                                                           Row(
                                                                             children: [

                                                                               Icon(Icons
                                                                                   .watch,
                                                                                 color: Colors
                                                                                     .orange,),
                                                                               Expanded(
                                                                                 child: Text("${state.data7!.title}",style: TextStyle(
                                                                                     fontSize: 16,
                                                                                     fontWeight: FontWeight
                                                                                         .bold,
                                                                                     color: Colors
                                                                                         .black),),
                                                                               ),



                                                                               SizedBox(width: 16,),

                                                                               Column(
                                                                                 children: [

                                                                                   Icon(Icons.price_change,
                                                                                     color: Colors
                                                                                         .blueAccent,),

                                                                                   Text(
                                                                                     "${state.data7!.price}",
                                                                                     style: TextStyle(
                                                                                         fontSize: 14,
                                                                                         fontWeight: FontWeight
                                                                                             .bold,
                                                                                         color: Colors
                                                                                             .grey),),

                                                                                 ],
                                                                               ),
                                                                             ],
                                                                           ),

                                                                           SizedBox(height: 8,),
                                                                         ],
                                                                       )),

                                                                   SizedBox(height: 16,),

                                                                   SizedBox(
                                                                     width: double.infinity,
                                                                     child: ElevatedButton(onPressed: (){
                                                                       Navigator.pop(context);
                                                                     },
                                                                         style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent)
                                                                         ,child: Text("Ok",style: TextStyle(
                                                                             fontSize: 16,
                                                                             fontWeight: FontWeight
                                                                                 .bold,
                                                                             color: Colors
                                                                                 .white),)),
                                                                   ),

                                                                 ]);
                                                           }
                                                           else if(state.data7==null){
                                                             return SizedBox(height:50,width:50,
                                                                 child: Center(child: CircularProgressIndicator(color: Colors.blueAccent,)));
                                                           }
                                                           else{
                                                             return Text("API Failed!!, Exception Occur");
                                                           }
                                                         }
                                                     ),

                                                   );
                                                 });}









                                             },
                                             child: Row(
                                               children: [
                                                 ClipRRect(
                                                   borderRadius: BorderRadius.circular(3),
                                                   child: Container(
                                                     padding: EdgeInsets.all(4),
                                                   decoration: BoxDecoration(color: apiColors[index]),
                                                       child: Icon(apiIcons[index],color: Colors.white,size: MediaQuery.sizeOf(context).height*0.07,)),
                                                 ),

                                                 SizedBox(width: 8,),
                                                 Expanded(
                                                   child: Column(
                                                     mainAxisAlignment: MainAxisAlignment.start,
                                                     crossAxisAlignment: CrossAxisAlignment.start,
                                                     children: [
                                                       Text("${apiTitles[index]}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),

                                                       Text("${apiNames[index]}",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 12),),
                                                     ],
                                                   ),
                                                 ),

                                                 Text("${optionTitles[index]}",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 12),),

                                                 Icon(Icons.keyboard_arrow_right_outlined,color: Colors.grey,)

                                               ],
                                             ),
                                           ),
                                         ),

                                         SizedBox(height: 8,),
                                         Divider()
                                       ],
                                     ),
                                   );
                        })
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
