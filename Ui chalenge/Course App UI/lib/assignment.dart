import 'package:flutter/material.dart';
import 'assignment2.dart';

class assignment extends StatefulWidget {
  const assignment({super.key});

  State createState() => _assignmentState();
}

class _assignmentState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, left: 20),
                child: const Icon(Icons.menu),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 25, right: 20),
                  child: const Icon(Icons.notifications_outlined)),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: const Text(
              "Welcome To New",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, left: 20, bottom: 20),
            child: const Text(
              "Educource",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.white),
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 25),
            child: TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: const BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: const BorderSide(color: Colors.white)),
                  suffixIcon: const Icon(
                    Icons.search_rounded,
                    size: 30,
                    color: Colors.black,
                  )
                  ),
            ),
          ),
         
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Colors.white),
               
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 30, left: 25),
                        child: const Text(
                          "Course For You",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            
                             
                                 Container(
                                
                                height: 242,
                                width: 190,
                                margin: const EdgeInsets.only(
                                    top: 15, left: 15, right: 15, bottom: 25),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const LinearGradient(colors: [
                                      Color.fromRGBO(197, 4, 98, 1),
                                      Color.fromRGBO(80, 3, 112, 1)
                                    ]),
                                ),
                                child: Image.asset("images/course_card1.png")
                              ),
                
                              
                                 Container(
                                
                                height: 242,
                                width: 190,
                                margin: const EdgeInsets.only(
                                    top: 15, left: 15, right: 15, bottom: 25),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const LinearGradient(colors: [
                                      Color.fromRGBO(0, 77, 228, 1),
                                      Color.fromRGBO(1, 47, 135, 1),
                                    ]),
                                ),
                                child:Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(top: 20, left: 20),
                                          child: const Text("Design Thinking",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(255, 255, 255, 1)
                                          ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(top: 5, left: 20),
                                          child: const Text("The Beginner",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(255, 255, 255, 1)
                                          ),
                                          ),
                                        )
                                      ],
                                    ),
                
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(top: 5, left: 20),
                                          child: Image.asset("images/Objects.png")
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ),
                
                              
                                 Container(
                                
                                height: 242,
                                width: 190,
                                margin: const EdgeInsets.only(
                                    top: 15, left: 15, right: 15, bottom: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const LinearGradient(colors: [
                                      Color.fromRGBO(197, 4, 98, 1),
                                      Color.fromRGBO(80, 3, 112, 1)
                                    ]),
                                ),
                                child: Image.asset("images/course_card1.png")
                              ),
                      
                      
                              
                      
                      
                            
                          ],
                        ),
                      ),
                       Column(
                         children: [
                           Container(
                            
                            margin: const EdgeInsets.only( left: 25),
                            child:Column(
                              children: [
                                Container(
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child:  const Text(
                              "Course By Category",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                                      ),
                                    ]
                                  ),
                                ),

                                       Container(
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:const EdgeInsets.only(top:25, left: 20, right: 50),
                                        child:Image.asset("images/course1.png")
                                      ),

                                      Container(
                                        margin:const EdgeInsets.only(top:10, left: 20, right: 50),
                                        child:Image.asset("images/course1.png")
                                      ),

                                      Container(
                                        margin:const EdgeInsets.only(top:10, left: 20, right: 50),
                                        child:Image.asset("images/course1.png")
                                      ),

                                      Container(
                                        margin:const EdgeInsets.only(top:10, left: 20, right: 50),
                                        child:Image.asset("images/course1.png")
                                      )
                                    ],
                                  )
                                  
                                 
                                ),

                               
                              ],
                            )
                            
                             
                      ),
                     
                    ],
                    
                  ),
                  
                
                         ],
                       ),
                    
                  )
            )
        
              
        ],

        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const assignment2()));
          });
        },
        child: const Icon(Icons.arrow_forward),
      ),
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
    );
  }
}
