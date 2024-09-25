import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Card',
      debugShowCheckedModeBanner: false,
      home: MyCard(),
    );
  }
}

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white24,
      appBar: AppBar(

        title: Text("Murtaza Hoshmand"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
           Center(
             child: Column(
               children: [
                 SizedBox(
                   height: 80,
                   width: 80,
                   child: CircleAvatar(
                   backgroundImage: AssetImage('lib/asset/mh.jpg'),
                     radius: 50,
                   ),
                 ),
                 SizedBox(height: 10,),
                 Text('Murtaza Hoshmand',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold,fontSize: 20),),


                 Text('Software Engineer',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold,fontSize: 20),)
               ],
             ),
           ),
            SizedBox(height: 30,),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.phone),
                      Text('0784801901',style: TextStyle(color: Colors.black),),

                    ],
                  ),
                 ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.email_sharp),
                      Text('mh@gmail.com',style: TextStyle(color: Colors.black),),

                    ],
                  ),
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
