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
                                   return  InkWell(
                                     onTap: (){

                                       print("calling api");
                                       context.read<GetBloc>().add(GetApiData(index: index));
                                       //Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                                     },
                                     child: Padding(
                                       padding: const EdgeInsets.fromLTRB(0,0,0,8),
                                       child: Column(
                                         children: [
                                           Row(
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

                                           SizedBox(height: 8,),
                                           Divider()
                                         ],
                                       ),
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
