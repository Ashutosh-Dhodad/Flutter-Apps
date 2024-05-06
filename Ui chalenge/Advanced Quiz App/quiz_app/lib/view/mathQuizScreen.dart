import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

class mathQuizScreen extends StatefulWidget{

  const mathQuizScreen({super.key});

  State createState()=>_mathQuizScreenState();
}

class _mathQuizScreenState extends State{

  Widget build(BuildContext context){
    return  Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("Math Quiz",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Color.fromRGBO(131, 76, 52, 1)
              ),),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

        Padding(
              padding:const EdgeInsets.all(15.0),
              child: LinearPercentIndicator(
                    width: 400.0,
                    lineHeight: 8.0,
                    percent: 0.9,
                    progressColor: Colors.green,
                    barRadius:const Radius.circular(10),
                  )
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin:const EdgeInsets.only(left: 22),
              child: const Text("12/20",
              style: TextStyle(
                color: Colors.green
              ),),
            ),
          ],
        ),

        const SizedBox(
          height:50 ,
        ),

         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Container(
              margin:const EdgeInsets.only(left: 20),
              height:108,
              width: 288,
              child: const Text("If David’s age is 27 years old in 2011. What was his age in 2003?",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color.fromRGBO(131, 76, 52, 1)
              ),),
            ),
          ],
        )

        ],
      )
    );
  }
}