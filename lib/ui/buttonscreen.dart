import 'package:all_ui/ui/screen1/homescreen1.dart';
import 'package:all_ui/ui/screen2/homescreen2.dart';
import 'package:all_ui/ui/screen3/homescreen3.dart';
import 'package:all_ui/ui/screen4/homescreen4.dart';
import 'package:all_ui/ui/screen5/homescreen5.dart';
import 'package:all_ui/ui/screen6/homescreen6.dart';
import 'package:flutter/material.dart';



class buttonscreen extends StatelessWidget {
  const buttonscreen({super.key});

  Widget list(String text1,void Function() ontap){
    return  ListTile(
              onTap:ontap, 
              leading: const CircleAvatar(radius: 50,child: Icon(Icons.image_sharp),),
            title:  Text(text1,style: TextStyle(fontSize: 18,),),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromARGB(255, 24, 143, 121),Color.fromARGB(255, 204, 178, 47)])
        ),),
        title:const Text('UI Gallery'),
        centerTitle: true,
      ),
      body:SafeArea(
       child: Container(
        padding: EdgeInsets.all(1),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
          children: [
          list("User Interface1", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) => const homescreen1())));}),
          list("User Interface2", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) => const homescreen2())));}),
          list("User Interface3", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) => const homescreen3())));}),
          list("User Interface4", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) => homescreen4())));}),
          list("User Interface5", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) => const homescreen5())));}),
          list("User Interface6", () {Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) =>  homescreen6())));}),
          ], 
        ),
       ), 
      ) ,
    );
  }
}