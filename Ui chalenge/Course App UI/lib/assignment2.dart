import 'package:flutter/material.dart';

class assignment2 extends StatefulWidget{
  const assignment2({super.key});

  State createState()=>_assignment2State();
}

class _assignment2State extends State{

  Widget build(BuildContext context){
    return Scaffold(

      body:Column(
        children: [
          
         
             Container(
               
                decoration:const BoxDecoration(gradient: LinearGradient(colors: [Color.fromRGBO(197, 4, 98, 1), Color.fromRGBO(80, 3, 112, 1)])),
                child: Column(
                  children: [
                    Row(
                      children: [
            
                        Container(
                          margin:const EdgeInsets.only(top: 30, left: 15),
                          child:const Icon(Icons.arrow_back, color: Colors.white),
                        ),
                      ]
                    ),
            
               
                     Row(
                      children: [
                        Container(
                          margin:const EdgeInsets.only(top: 20, left: 30),
                          child: const Text("UX Designer from",
                             style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
                        ),
                        )
                      ],
                    ),
            
                     Row(
                      children: [
                        Container(
                          margin:const EdgeInsets.only(top:5, left: 30),
                          child: const Text("Scratch",
                             style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                          ),
                        ),
                        )
                      ],
                    ),
            
                     Row(
                      children: [
                        Container(
                          margin:const EdgeInsets.only(top:15, left: 30),
                          child: const Text("Basic guideline & tips & tricks for how to",
                             style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(228, 205, 225, 1),
                          ),
                        ),
                        )
                      ],
                    ),
            
                    Row(
                      children: [
                        Container(
                          margin:const EdgeInsets.only(top:5, left: 30),
                          child: const Text("become a UX designer easily",
                             style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(228, 205, 225, 1),
                          ),
                        ),
                        )
                      ],
                    ),
            
                     Row(
                      children: [
                        Container(
                          margin:const EdgeInsets.only(top:5, left: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin:const EdgeInsets.only(top:20 ),
                                child: Image.asset("images/group.png"),
                              ),
            
                              Container(
                               margin:const EdgeInsets.only(left: 8, top: 15),
                                child:const Text("Author:",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(228, 205, 225, 1),
            
                                ),
                                )
                              ),
            
                               Container(
                                margin:const EdgeInsets.only(left: 5, top: 15),
                                child:const Text("Jenny",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
            
                                ),
                                )
                              ),
            
                              Container(
                                margin:const EdgeInsets.only(left:100 , top: 15),
                                child: Image.asset("images/star.png"),
                              )
                            ],
                          )
                            
                        )
                      ],
                    ),
            
            SizedBox(
              height: 20,
            )
                  ],
                  
                ),
              ),
            

          

          Expanded(
            child: Container(
              padding:const EdgeInsets.all(15),
              decoration:const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight:Radius.circular(40)),color: Color.fromRGBO(237, 233, 233, 1)),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder:(context, index){
                  return Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),  color:const Color.fromRGBO(255, 255, 255, 1),),
                   
                    margin:const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                          
                          margin:const EdgeInsets.only(left: 5),
                          child: Image.asset("images/icon.png"),
                        ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                 Container(
                              margin:const EdgeInsets.only(left:10, top: 15),
                              child:const Text("Introduction",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                              ),
                              ),
                            ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                              margin:const EdgeInsets.only(left: 10, top: 10),
                              child:const Text("Lorem Ipsum is simply dummy text ...",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w300
                              ),
                              ),
                            ),
                              ],
                            )
                          ],
                        )
                        
                      ],
                    ),
                  );
                }
                 ),
            ),
          )
        ],
      ),
      

      
    );
  }
}