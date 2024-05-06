
import 'package:flutter/material.dart';

import 'plantInfoPage.dart';

class thirdPage extends StatefulWidget{

  const thirdPage({super.key});

  State createState()=>_thirdPageState();
}

class _thirdPageState extends State{

  Widget build(BuildContext context){
    return Scaffold(
     body:Column(
      children: [
        Container(
          height: 50,
            width: 414,
            
        ),

         Container(
                    margin:const EdgeInsets.only(left: 80),
                    child: const Image(image: AssetImage("assets/images/circleImg3.png"))
                    ),


        const SizedBox(
          height: 30,
        ),


         Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

            
                    const SizedBox(
                      height: 10,
                    ),

                     Container(
                      margin:const EdgeInsets.only(left: 20),
                       child: const Text("Find your",
                        style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                        ),),
                     ),
                      Container(
                        margin:const EdgeInsets.only(left: 20),
                        child: const Text("favorite plants",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                        ),),
                      )
                  ],
                ),
              ),

             Spacer(),

              Container(
                margin:const EdgeInsets.only( right: 20),
                height: 40,
                width: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: Image.asset("assets/images/shopping-bag.png", color:const Color.fromARGB(255, 4, 105, 7),),
              )
            ],
          ),

          const SizedBox(
            height: 15,
          ),
            
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                       SizedBox(
                       height: 140,
                    
                      child: ListView.builder(
                                 
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder:(context, index) {
                        return Container(
                          margin:const  EdgeInsets.only(left: 20, right: 10, top: 15),
                          height: 130,
                          width: 340,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:const Color.fromRGBO(165, 210, 155, 1)),
                          child: Row(
                            
                            children: [
                              SizedBox(
                                child: Column(
                                  children: [
                                    Container(
                                      padding:const EdgeInsets.only(top: 20, left: 30),
                                      child: const Text("30% OFF",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black
                                      ),),
                                    ),
                                
                                     Container(
                                       padding:const EdgeInsets.only(top: 5, left: 15),
                                      child:const Text("02-23 April",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                      ),),
                                    )
                                  ],
                                ),
                              ),
                                
                             const Spacer(),
                                
                              Container(
                                margin: const EdgeInsets.only(right: 25),
                                child: Image.asset(
                                  "assets/images/plant1.png"
                                ),
                              )
                            ],
                          )
                        );
                      },
                       ),
                                ),
                  
                            
                  
                           Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                  Container(
                    margin:const EdgeInsets.only(top: 10, right: 10,),
                    height: 10,
                    width: 10,
                    decoration:const BoxDecoration(shape: BoxShape.circle, color:  Color.fromARGB(255, 14, 84, 16)),
                  ),
                  
                   Container(
                    margin:const EdgeInsets.only(top: 10, right: 10),
                    height: 10,
                    width: 10,
                    decoration:const BoxDecoration(shape: BoxShape.circle, color:  Color.fromARGB(255, 136, 187, 137)),
                  ),
                  
                   Container(
                   margin:const EdgeInsets.only(top: 10, right: 10),
                    height: 10,
                    width: 10,
                    decoration:const BoxDecoration(shape: BoxShape.circle, color:   Color.fromARGB(255, 136, 187, 137)),
                  )
                              ],
                            ),
                           ),
                  
                           const SizedBox(
                            height: 10,
                           ),
                  
                           Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Container(
                  margin:const EdgeInsets.only(left: 30, bottom: 10),
                   child:const Text("Indoor",
                   style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  
                   ),),
                               ),
                             ],
                           ),
                  
                            SizedBox(
                              height: 220,
                              
                              child: ListView.builder(
                             
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder:(context, index) {
                    return GestureDetector(
                      onTap: (){
                         Navigator.push(
                            context, MaterialPageRoute(builder: (context)=>const plantInfoPage()), );
                      },
                      child: Container(
                        margin:const EdgeInsets.only(left: 20),
                        width: 170,
                        height:220,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                        child: Column(
                          children: [
                            
                             SizedBox(
                              height: 140,
                              width: 120,
                              child:
                              Image.asset(
                              "assets/images/indoorPlant.png"
                            ),
                            ),
                          
                                        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin:const EdgeInsets.only(left: 20, top: 10),
                                  child: const Text("Snake Plants",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  )),
                                ),
                              ],
                            ),
                                        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                                 
                                  child: const Text("\u20B9 350",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 7, 76, 9)
                                  )),
                                ),
                                        
                                const Spacer(),
                                        
                                 Container(
                                  margin:const EdgeInsets.only(right: 20),
                                  height: 40,
                                  width: 40,
                                  decoration:const BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 235, 233, 233)),
                                  child: Image.asset("assets/images/shopping-bag.png", color:const Color.fromARGB(255, 11, 80, 14),),
                                )
                                        
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                   ),
                            ),
                  
                        
                            const Padding(
                              padding:  EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 5),
                              child:  Divider(
                  
                            thickness: 2,
                            color: Colors.grey,
                                        ),
                                      ),
                  
                            
                  
                           Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Container(
                              margin:const EdgeInsets.only(left: 30, bottom: 10),
                              child:const Text("Outdoor",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              
                              ),),
                               ),
                             ],
                           ),
                  
                            SizedBox(
                              height: 220,
                              
                              child: ListView.builder(
                             
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder:(context, index) {
                              return GestureDetector(
                               
                                    onTap: (){
                                      Navigator.push(
                                          context, MaterialPageRoute(builder: (context)=>const plantInfoPage()), );
                                    },
                                    child: Container(
                                  margin:const EdgeInsets.only(left: 20),
                                  width: 170,
                                  height:220,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                                  child: Column(
                                    children: [
                                                          
                                                           SizedBox(
                                                            height: 140,
                                                            width: 120,
                                                            child:
                                                            Image.asset(
                                                            "assets/images/indoorPlant.png"
                                                          ),
                                                          ),
                                                        
                                                  
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                Container(
                                  margin:const EdgeInsets.only(left: 20, top: 10),
                                  child: const Text("Snake Plants",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                  )),
                                ),
                                                            ],
                                                          ),
                                                  
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                                 
                                  child: const Text("\u20B9 350",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 7, 76, 9)
                                  )),
                                ),
                                                  
                                const Spacer(),
                                                  
                                 Container(
                                  margin:const EdgeInsets.only(right: 20),
                                  height: 40,
                                  width: 40,
                                  decoration:const BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 235, 233, 233)),
                                  child: Image.asset("assets/images/shopping-bag.png", color:const Color.fromARGB(255, 11, 80, 14),),
                                )
                                                  
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                              );
                  },
                   ),
                            ),
                    ]
                  ),
                ),
              )


      ]
     ),
    
      backgroundColor:const Color.fromARGB(255, 225, 217, 223),

         
    );
  }
}