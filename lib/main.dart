

import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.black26,
       
        flexibleSpace:SafeArea(

          child:
            Row(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
             //   Padding(padding: EdgeInsets.symmetric(vertical: 20)),


Text("Instagram",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
fontSize: 28,fontFamily: 'insta',letterSpacing: 2,),),
               Padding(padding: EdgeInsets.only(left: 50,)),

                Row(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.add_box_rounded,color: Colors.white,size:30),
                    SizedBox(width: 10,),
                    Icon(Icons.favorite,color: Colors.white,size:30),
                    SizedBox(width: 10,),
                    Icon(Icons.message_rounded,color: Colors.white,size:30),
                  ],
                ),

              ],
            ),

        ) ,
      ),
      body:SingleChildScrollView(
        child:
          Column(

          //  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Padding(padding:EdgeInsets.symmetric(vertical: 20)),
              ListTile(
                leading:Padding(padding: EdgeInsets.only(bottom: 2),
            child:      CircleAvatar(
backgroundImage:AssetImage("pics/pic.png") ,

                ),),
               title: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(height: 10,),
                   Row(

                    crossAxisAlignment: CrossAxisAlignment.end,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     //mainAxisSize: MainAxisSize.min,
                     children: [
                       //
                   //Padding(padding: EdgeInsets.only(top:40,right: 40 )),
                       Align(alignment: Alignment.bottomLeft,
                           child: Text("jk",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),

                       Icon(Icons.more_vert,color: Colors.white,size:20),
                     ],
                   ),
                   Text("Sponsored",style: TextStyle(color: Colors.white,fontSize: 14),),
                   //pic
                 //  Decoration()
               Center(
                 child: Container(
                  margin: EdgeInsets.only(top: 10,right: 50),
height: 400,
width: 300,
decoration: BoxDecoration(

  image:const DecorationImage(

    fit: BoxFit.cover,
    image: AssetImage("pics/pic2.jpg"),

    //image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/4/40/Jungkook_x_Samsung_Galaxy_August_2021.png"),
  ),
                    // child: Image(image:DecorationImage(AssetImage("pics/pic2.jpg"))
                     )

),
               ),
////react icons/////

                 SizedBox(height: 5,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Icon(Icons.favorite,color: Colors.red,size:35),
                        SizedBox(width: 15,),
                           Icon(Icons.mode_comment_outlined,color: Colors.white,size:30),
                          SizedBox(width: 15,),
                           Icon(Icons.send_outlined,color: Colors.white,size:30,),
                         ],
                       ),



                       Icon(Icons.archive_outlined,color: Colors.white,size:30,),

                     ],
                   ),
Text("8,476 likes",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),

                   Row(
                     children: [
                       Text("jk ",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                       Text("My journey today....",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w400))
                     ],
                   ),
                    SizedBox(height: 4,),
                    Text("View all  1,525 comments",style: TextStyle(color: Colors.grey,
    fontSize: 16,fontWeight: FontWeight.w500)),
                   Text("15 hours ago",style: TextStyle(color: Colors.grey,
                       fontSize: 14,fontWeight: FontWeight.w400)),

                 ]

               ),

              ),

            ],
          ),

      ),
     bottomNavigationBar: BottomAppBar(
       color: Colors.black,
       child:   Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
     children: [

     Icon(Icons.home_filled,color: Colors.white,size: 30,),
       Icon(Icons.search,color: Colors.white,size: 30,),
       Icon(Icons.video_collection_outlined,color: Colors.white,size: 30,),
       Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 30,),
       //Icon(Icons.image_rounded("pics/pic"),color: Colors.white,size: 30,),
    CircleAvatar(
      backgroundImage: AssetImage("pics/pic.png"),
    )
      ],
    ),
     ),
    );
  }
}
