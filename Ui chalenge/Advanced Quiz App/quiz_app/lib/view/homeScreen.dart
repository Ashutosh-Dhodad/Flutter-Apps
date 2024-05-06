import 'package:flutter/material.dart';
import 'package:quiz_app/view/quizTopicScreen.dart';

class homeScreen extends StatefulWidget{

  const homeScreen({super.key});

  State createState()=>_homeScreenState();
}

class _homeScreenState extends State{

  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
          "assets/images/Logo.png"
        ),

        Image.asset(
          "assets/images/bgImg.png"
        ),
        ],),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const quizTopicScreen()));
            });
          },
          child: const Text("Start"),
          ),
    );
  }
}