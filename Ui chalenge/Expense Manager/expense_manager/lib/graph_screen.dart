
import 'package:expense_manager/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import 'categories_screen.dart';
import 'trash_screen.dart';

class graph_screen extends StatefulWidget{
  const graph_screen({super.key});

  State createState()=>_graph_screen();
}

class _graph_screen extends State{
  Map<String, double> data={
    "Food":30,
    "Fuel":30,
     "Medicine":20,
    "Entertainment":20,
    "Shopping":20
  };

  List<String> imgUrl=[
    
    "assets/images/foodImg.png",
    "assets/images/fuelImg.png",
     "assets/images/medicine.png",
    "assets/images/shoppingCartImg.png",
    "assets/images/entertainmentImg.png"
  ];

  List<String> cardName=[
    "Food",
    "Fuel",
    "Medicine",
    "Cart",
    "Entertainment"
 
  ];

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("Graphs",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500
        ),)
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15, 
          ),



          Container(
            margin:const EdgeInsets.only(left: 30),
            child: PieChart(

              dataMap: data,
              chartType: ChartType.ring,
              chartRadius: 300,
              ringStrokeWidth: 30,
              centerText: "Total \u20B9 2250.00",
              centerTextStyle:const TextStyle(
                backgroundColor: Colors.white,
                color: Colors.black
              ),
              animationDuration:const Duration(milliseconds: 2000),
              chartValuesOptions:const ChartValuesOptions(
                showChartValues: false,
              ),

             
              ),
          ),

          const SizedBox(
            height: 20,
          ),

          const Divider(),

          const SizedBox(
            height: 10,
          ),
          
           SizedBox(
            height: 350,
            child: ListView.builder(
              itemCount: 5,           
              itemBuilder:(context, index)
               {
               
              
                return Container(

            margin:const EdgeInsets.only(bottom: 30),
            height: 40,
            width: 280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin:const EdgeInsets.only(left: 30),
                  child: Image(image: AssetImage(imgUrl[index]))),

                Text(cardName[index],
                style:const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
                ),),

                const SizedBox(
                  width: 110,
                ),

                const Text("\u20B9 650.00",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),),
              ],
            ),
          );

              },),
          ),
          
          const SizedBox(
            height: 10,
          ),

         const Divider(),

           Row(
            children: [
              Container(
                margin:const EdgeInsets.only(left: 70, top: 10),
                child:const Text("Total",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),),
              ),

              const SizedBox(
                width: 120,
              ),

              const Text(" \u20B9 2,250.00",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),)
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
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