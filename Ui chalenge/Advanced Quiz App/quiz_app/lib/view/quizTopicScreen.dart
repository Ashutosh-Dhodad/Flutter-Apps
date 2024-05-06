import 'package:flutter/material.dart';
import 'package:quiz_app/view/mathQuizScreen.dart';

class quizTopicScreen extends StatefulWidget{

  const quizTopicScreen({super.key});

  State createState()=>_quizTopicScreen();
}

class _quizTopicScreen extends State{

  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
      
        children: [
          const SizedBox(
            height: 50,
          ),

          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:const EdgeInsets.only(left: 25),
                    child: const Text("Hi Pamela",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(131, 76, 52, 1),
                    ),
                    ),
                    
                    ),

                     Container(
                margin:const EdgeInsets.only(left: 25),
                child: const Text("Great to see you again!",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(131, 76, 52, 1),
                ),),
              ),
                ],
              ),

                const Spacer(),

                Container(
                  margin:const EdgeInsets.only(right: 25),
                  height: 64,
                  width: 64,
                  decoration:const BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(250, 188, 154, 1)),
                )

            ],
          ),

          const SizedBox(
            height: 50,
          ),

         

                 GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const mathQuizScreen()));
                  },
                   child: Container(
                    margin:const EdgeInsets.only(bottom: 20, left: 25, right: 25),
                    height: 80,
                    width: 306,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:const Color.fromRGBO(255, 237, 217, 1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin:const EdgeInsets.only(left: 20),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                          child:const  Center(
                            child: Text("M",
                            
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(200, 60, 0, 1),
                            ),),
                          ),
                        ),
                   
                        Container(
                          height: 25,
                          width: 100,
                          margin:const EdgeInsets.only(left: 25),
                          child: const Center(
                            child: Text("Math",
                            
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(200, 60, 0, 1),
                            ),),
                          ),
                        ),
                   
                       const Spacer(),
                   
                        
                   
                       Container(
                        margin:const EdgeInsets.only(right: 25),
                        child: const Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                                   ),
                 ),

                const SizedBox(
                  height: 10,
                ),

                 Container(
                  margin:const EdgeInsets.only(bottom: 20, left: 25, right: 25),
                  height: 80,
                  width: 306,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:const Color.fromRGBO(255, 237, 217, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 20),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                        child:const  Center(
                          child: Text("H",
                          
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(255, 157, 66, 1),
                          ),),
                        ),
                      ),

                      Container(
                        height: 25,
                        width: 100,
                        margin:const EdgeInsets.only(left: 25),
                        child: const Center(
                          child: Text("History",
                          
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(200, 60, 0, 1),
                          ),),
                        ),
                      ),

                     const Spacer(),

                      

                     Container(
                      margin:const EdgeInsets.only(right: 25),
                      child: const Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                 Container(
                  margin:const EdgeInsets.only(bottom: 20, left: 25, right: 25),
                  height: 80,
                  width: 306,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:const Color.fromRGBO(255, 237, 217, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 20),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                        child:const  Center(
                          child: Text("G",
                          
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(3, 163, 134, 1),
                          ),),
                        ),
                      ),

                      Container(
                        height: 25,
                        width: 100,
                        margin:const EdgeInsets.only(left: 25),
                        child: const Center(
                          child: Text("Geography",
                          
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(200, 60, 0, 1),
                          ),),
                        ),
                      ),

                     const Spacer(),

                      

                     Container(
                      margin:const EdgeInsets.only(right: 25),
                      child: const Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                 Container(
                  margin:const EdgeInsets.only(bottom: 20, left: 25, right: 25),
                  height: 80,
                  width: 306,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:const Color.fromRGBO(255, 237, 217, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 20),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                        child:const  Center(
                          child: Text("B",
                          
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(251, 43, 255, 1),
                          ),),
                        ),
                      ),

                      Container(
                        height: 25,
                        width: 100,
                        margin:const EdgeInsets.only(left: 25),
                        child: const Center(
                          child: Text("Biology",
                          
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(200, 60, 0, 1),
                          ),),
                        ),
                      ),

                     const Spacer(),

                      

                     Container(
                      margin:const EdgeInsets.only(right: 25),
                      child: const Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                 Container(
                  margin:const EdgeInsets.only(bottom: 20, left: 25, right: 25),
                  height: 80,
                  width: 306,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:const Color.fromRGBO(255, 237, 217, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 20),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                        child:const  Center(
                          child: Text("S",
                          
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(45, 104, 255, 1),
                          ),),
                        ),
                      ),

                      Container(
                        height: 25,
                        width: 100,
                        margin:const EdgeInsets.only(left: 25),
                        child: const Center(
                          child: Text("Sports",
                          
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(200, 60, 0, 1),
                          ),),
                        ),
                      ),

                     const Spacer(),

                      

                     Container(
                      margin:const EdgeInsets.only(right: 25),
                      child: const Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                )
          
        
        ],
      )
    );
  }
}