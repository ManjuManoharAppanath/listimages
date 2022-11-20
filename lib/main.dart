import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List im=['images/delhi.jpg','images/london.jpg','images/newyork.jpg','images/vancouver.jpg'];
  List tx=['Delhi','London','Vancouver','New york'];
  List tt=['india','britian','Canada','USA'];
  List ts=['population: 19 mill','population: 8 mill','population: 2.4 mill','population: 8.1 mill'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
      Scaffold(appBar:
        AppBar(title: Text('Cities around world',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.yellow,
          centerTitle: true,
        ),
      body: ListView.builder(itemCount: im.length,itemBuilder: (BuildContext context,int i)
      {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),            color: Colors.white,
          ),
            height: 100,
            width: 100,
            child: Row(
              children: [
              Image.asset(im[i]),
                SizedBox(width: 30,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 25,),
                   Text(tx[i]),
                   SizedBox(height: 10,),
                   Text(tt[i]),
                   Text(ts[i]),
                 ],),
               )
              ],
            )
          ),
        );
      }
      ),
      ),
      );
  }
}
