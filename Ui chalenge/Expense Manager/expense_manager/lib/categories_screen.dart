
import 'package:expense_manager/home_screen.dart';
import 'package:flutter/material.dart';

import 'graph_screen.dart';
import 'trash_screen.dart';

class categories_screen extends StatefulWidget{
  const categories_screen({super.key});

  State createState()=>_categories_screenState();
}

class _categories_screenState extends State{
  final TextEditingController _imgUrlController=TextEditingController();

  List<String> imgUrl=[
    
    "assets/images/foodImg.png",
    "assets/images/fuelImg.png",
     "assets/images/medicine.png",
    "assets/images/shoppingCartImg.png",
  ];

  List<String> cardName=[
    "Food",
    "Fuel",
    "Medicine",
    "Cart"
  ];

  Future<dynamic>? showMyDialog()async{
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return  AlertDialog(
         
          title:const Center(
            child:  Text("Delete Category",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )),
          ),

          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Are you sure you want to delete the "),
              Text("selected category?")
            ],
          ),

          actions: [
            ElevatedButton(
              onPressed: (){
                setState(() {
                  showBottomSheet();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:const Color.fromRGBO(14, 161, 125, 1)
              ),
              child: const Text("Delete",
              style: TextStyle(
                color: Colors.white
              ),)),

             ElevatedButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: const Text("Cancel")),

            const SizedBox(
              width: 10,
            )
          ],
        );
      }
      );
  }

  void showBottomSheet(){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (context){
        return Padding(
          padding:EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
        
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              const SizedBox(
                height: 40,
              ),

              Container(
                height: 74,
                width: 74,
                decoration:const BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(140, 128, 128, 0.2)),
                child:const Icon(Icons.image,   color: Color.fromRGBO(191, 189, 189, 1)),
              ),

              const SizedBox(
                height: 20,
              ),

               Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Container(
                      margin:const EdgeInsets.only(left: 30),
                       child:const Text("Image URL",
                                           style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                                           ),),
                     ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Container(
                      margin:const EdgeInsets.only(left: 30),
                        height: 50,
                        width: 280,
                        decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white, border: Border.all(color: const Color.fromRGBO(191, 189, 189, 1))),
                        child: TextFormField(
                          controller:_imgUrlController,
                          decoration:InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                        
                            enabledBorder:  OutlineInputBorder(
                              borderSide:const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),

                            hintText: "Enter URL",
                            hintStyle:const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(191, 189, 189, 1)
                            )
                           
                          ),
                     
                          keyboardType: TextInputType.text,
                        
                        
                        ),
                      ),
                   ],
                 ),

                 const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Container(
                      margin:const EdgeInsets.only(left: 30),
                       child:const Text("Category",
                                           style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                                           ),),
                     ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Container(
                      margin:const EdgeInsets.only(left: 30),
                        height: 50,
                        width: 280,
                        decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white, border: Border.all(color: const Color.fromRGBO(191, 189, 189, 1))),
                        child: TextFormField(
                          controller:_imgUrlController,
                          decoration:InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                        
                            enabledBorder:  OutlineInputBorder(
                              borderSide:const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enter Category Name",
                            hintStyle:const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(191, 189, 189, 1)
                            )
                           
                          ),
                     
                          keyboardType: TextInputType.text,
                          
                        
                        
                        ),
                      ),
                   ],
                 ),

                 const SizedBox(
                  height: 60,
                 ),

                 Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.green),
                   child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:const Color.fromRGBO(14, 161, 125, 1)
                    ),
                     child: const Text("Add",
                     style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                     ),)),
                 ),

                  const SizedBox(
                  height: 30,
                 ),
              

            ],
          ),
        );
      }
      
      );
  }

  Widget build(BuildContext context){
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title:const Row(
          children: [
            Text("Categories",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),)
          ],
        ),
      ),
      body:Column(
        children: [
           
        

          const SizedBox(
            height: 40,
          ),

          SizedBox(
            height: 500,
            child: GridView.builder(
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                 ),
                 padding:const EdgeInsets.all(20),
            
                 itemCount: 4,
                 itemBuilder: (context, index) {
                   String url=imgUrl[index];
                   String card=cardName[index];

                   return GestureDetector(
                    onLongPress: () {
                      showMyDialog();
                    },
                     child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: const[ BoxShadow(spreadRadius: 2, blurRadius: 10, color: Color.fromRGBO(0, 0, 0, 0.15))], color: Colors.white),
                      alignment: Alignment.center,
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 74,
                            width: 74,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage((url)),fit: BoxFit.cover)),
                            ),
                     
                          const SizedBox(
                            height: 10,
                          ),
                     
                          Text(card,
                          style:const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),),
                        ],
                      ),
                     ),
                   );
                 },
               ),
          ),

             
          
        ],
      ),

           floatingActionButton: Container(
        height: 46,
        width: 166,
        margin:const EdgeInsets.only(bottom: 20),
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.white, boxShadow:const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.15), blurRadius: 20, spreadRadius: 1)],),
        child: FloatingActionButton(
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide:const BorderSide(color: Colors.white)),
          
          onPressed: (){
            showBottomSheet();
          },
          
          backgroundColor: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.green),image:const DecorationImage(image: AssetImage("assets/images/add_icon.png") ))),
                Container(
                  margin:const EdgeInsets.only(right: 15),
                  child: const Text("Add Category",
                  style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                            ),),
                ),

            ],
          ),
         ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
          
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