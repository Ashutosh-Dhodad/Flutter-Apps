import 'package:expense_manager/home_screen.dart';
import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'graph_screen.dart';

class trash_screen extends StatefulWidget{
  const trash_screen({super.key});

  State createState()=>_trash_screen();
}

class _trash_screen extends State{


  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        title:const Text("Trash",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500
        ),)
      ),
      body:Column(
        children: [
          const SizedBox(
            height: 30,
          ),

          SizedBox(
            height: 580,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder:(context, index) {
               
                return Container(
                  height: 75,
                  width: 360,
                  decoration:const BoxDecoration(border: Border(bottom: BorderSide(color: Color.fromRGBO(206, 206, 206, 1)))),
                  child: Row(
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 15, right: 10),
                        height: 21,
                        width: 21,
                        decoration:const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/subtractImg2.png"))),
                      ),

                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:const EdgeInsets.only(top: 10),
                            child:const Text("Medicine",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            )
                            ),
                          ),

                          
                               const Text("Lorem Ipsum is simply dummy text of the printing",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                              )
                          ),
                               const Row(
                                 children: [
                                   Text("and typesetting industry...",
                                                                 style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                     )
                                   ),

                              Text("more",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(173, 170, 170, 1)
                              )
                              ),
                                 ],
                               ),
                            ],
                          ),

                        
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Container(
                              margin:const EdgeInsets.only(top: 10),
                               child: const Text("500",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400
                                  ),),
                             ),
                              
                                 Container(
                                  margin:const EdgeInsets.only(bottom: 10),
                                   child: const Text("3 June |11:50 AM",
                                                                   style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400
                                                                   ),
                                                                 ),
                                 )
                            ],
                          )
                    ],
                  ),
                );
              },
            )
              )
        ],
      ),

      

       drawer:  Drawer(
        child: Column(
          children: [
           const SizedBox(
              height: 50,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin:const EdgeInsets.only(left: 30),
                  child:const Text("Expense Manager",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin:const EdgeInsets.only(left: 30),
                  child:const Text("Saves all your transaction",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 0.5)
                  ),),
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height:40,
                  width: 184,
                  
                  decoration:const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const home_screen()));
                        },
                        child: SizedBox(          
                          child:  Row(
                            children: [
                              Container(
                                margin:const EdgeInsets.only(left: 20, right: 10),
                                child:const Image(image: AssetImage("assets/images/transactionImg.png")),
                              ),
                              const Text("Transaction",
                                     style: TextStyle(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w400,
                                     color: Colors.black
                                                    ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height:40,
                  width: 184,
                  
                  decoration:const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const graph_screen()));
                        },
                        child: SizedBox(          
                          child:  Row(
                            children: [
                              Container(
                                margin:const EdgeInsets.only(left: 20, right: 10),
                                child:const Image(image: AssetImage("assets/images/graphsImg.png")),
                              ),
                              const Text("Graphs",
                                     style: TextStyle(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w400,
                                     color: Colors.black
                                                    ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),

           Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height:40,
                  width: 184,
                  
                  decoration:const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const categories_screen()));
                        },
                        child: SizedBox(          
                          child:  Row(
                            children: [
                              Container(
                                margin:const EdgeInsets.only(left: 20, right: 10),
                                child:const Image(image: AssetImage("assets/images/categoryImg.png")),
                              ),
                              const Text("Category",
                                     style: TextStyle(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w400,
                                     color: Colors.black
                                ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height:40,
                  width: 184,
                  
                  decoration:const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const trash_screen()));
                        },
                        child: SizedBox(
                          child:  Row(
                              children: [
                                Container(
                                  margin:const EdgeInsets.only(left: 20, right: 10),
                                  child:const Image(image: AssetImage("assets/images/trashImg.png")),
                                ),
                                const Text("Trash",
                                       style: TextStyle(
                                       fontSize: 16,
                                       fontWeight: FontWeight.w400,
                                       color: Colors.black
                                        ),),
                              ],
                            ),
                        ),
                      ),

                      
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height:40,
                  width: 184,
                  
                  decoration:const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),),
                  child: Row(
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left: 20, right: 10),
                        height: 20,
                        width: 20,
                        decoration:const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/aboutusImg.png"))),
                      ),

                      const Text("About Us",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                      ),)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}