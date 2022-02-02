// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Welcome"),
        centerTitle: true,
      ),
      body: Center(
        // ignore: prefer_const_constructors
        child: Padding(padding: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          SizedBox(
            height: 150,
            child: Image.asset("assets/brain.jpg",fit: BoxFit.contain,),
          ),
          
          // ignore: prefer_const_constructors
          Text("Welcome To The App",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),


        
          ActionChip(label: Text("LogOut", style: TextStyle(color: Colors.black),), onPressed: () {} )




        ],
        ),

        ),
      ),
    );
  }
}