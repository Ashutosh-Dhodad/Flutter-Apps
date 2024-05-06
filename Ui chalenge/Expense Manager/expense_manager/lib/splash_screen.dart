import 'package:flutter/material.dart';
import 'login_screen.dart';

class splash_screen extends StatefulWidget{
  const splash_screen({super.key});

  State createState()=>_splash_screenState();
}

class _splash_screenState extends State{

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin:const EdgeInsets.only(top: 300),
              height: 144,
              width: 144,
              
              decoration: const BoxDecoration(shape: BoxShape.circle,color: Color.fromRGBO(234, 238, 235, 1), image: DecorationImage(image: AssetImage("assets/images/app_logo.png")),
            )
            ),

            const Spacer(),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const login_screen()));
              },
              child: Container(
                margin:const EdgeInsets.only(bottom: 50),
                child: const Text("Expense Manager",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
                ),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}