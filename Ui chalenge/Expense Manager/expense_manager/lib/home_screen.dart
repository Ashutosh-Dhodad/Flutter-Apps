import 'package:expense_manager/categories_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'trash_screen.dart';
import 'graph_screen.dart';
import 'package:intl/intl.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  State createState() => _home_screenState();
}

class expensedata {
  String date;
  String amount;
  String category;
  String description;

  expensedata(
      {required this.date,
      required this.amount,
      required this.category,
      required this.description});
}

class _home_screenState extends State {
  bool ShowBottomSheet = false;
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void showBottomSheet() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        backgroundColor: Colors.white,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 40, bottom: 10),
                        child: const Text(
                          "Date",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        )),
                  ],
                ),
                Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromRGBO(191, 189, 189, 1))),
                  child: TextFormField(
                    controller: _dateController,
                    readOnly: true,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onTap: () async {
                      DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025));

                      String formatedDate =
                          DateFormat.yMMMd().format(pickeddate!);

                      setState(() {
                        _dateController.text = formatedDate;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 40, bottom: 10),
                        child: const Text(
                          "Amount",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        )),
                  ],
                ),
                Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromRGBO(191, 189, 189, 1))),
                  child: TextFormField(
                    controller: _amountController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 40, bottom: 10),
                        child: const Text(
                          "Category",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        )),
                  ],
                ),
                Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromRGBO(191, 189, 189, 1))),
                  child: TextFormField(
                    controller: _categoryController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 40, bottom: 10),
                        child: const Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        )),
                  ],
                ),
                Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromRGBO(191, 189, 189, 1))),
                  child: TextFormField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  width: 123,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: ElevatedButton(
                    onPressed: () {
                      submit();
                      Navigator.of(context).pop();
                    },
                    style:
                        ElevatedButton.styleFrom( backgroundColor:const Color.fromRGBO(14, 161, 125, 1)),
                    child: const Text("Add",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ),
                )
              ],
            ),
          );
        });
  }

  List inputData = [];
  List<String> imgUrl = [
    "assets/images/medicine.png",
    "assets/images/foodImg.png",
    "assets/images/shoppingCartImg.png",
    "assets/images/fuelImg.png",
    "assets/images/entertainmentImg.png",
  ];
  void submit() {
    if(_dateController.text.trim().isNotEmpty
    && _amountController.text.trim().isNotEmpty
    && _categoryController.text.trim().isNotEmpty
    && _descriptionController.text.trim().isNotEmpty){
    setState(() {
      inputData.add(expensedata(
          date: _dateController.text.trim(),
          amount: _amountController.text.trim(),
          category: _categoryController.text.trim(),
          description: _descriptionController.text.trim()));
    });
  }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Row(
          children: [
           Text(
                  "June 2024",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),

          SizedBox(
            width: 170,
          ),

          Icon(Icons.search)
          ]
        ),
        
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
         
          SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: inputData.length,
              itemBuilder: (context, index) {
                String url = imgUrl[index%imgUrl.length];
                return Container(
                  padding: const EdgeInsets.only(left: 10),
                  margin: const EdgeInsets.only(top: 10),
                  height: 58,
                  width: 360,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(206, 206, 206, 1)))),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 41,
                        width: 41,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage(url))),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            inputData[index].category,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 30,
                              width: 150,
                              child: Text(
                                inputData[index].description,
                                style: const TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        width: 20,
                      ),
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 15,
                                width: 15,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/Subtract_icon.png"))),
                              ),
                              Container(
                               height: 20,
                               width: 70,
                                margin: const EdgeInsets.only(right: 10),
                                child: Text(
                                  inputData[index].amount,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              inputData[index].date,
                              style: const TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        height: 46,
        width: 166,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                blurRadius: 20,
                spreadRadius: 1)
          ],
        ),
        child: FloatingActionButton(
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(color: Colors.white)),
          onPressed: () {
            showBottomSheet();
          },
          backgroundColor: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/add_icon.png")))),
              Container(
                margin: const EdgeInsets.only(right: 15),
                child: const Text(
                  "Add Transaction",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                    
                    decoration:const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)), color: Color.fromRGBO(14, 161, 125, 0.15)),
                    child: Row(
                      children: [
                        Container(
                          margin:const EdgeInsets.only(left: 20, right: 10),
                          height: 20,
                          width: 20,
                          decoration:const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/transactionImg.png"))),
                        ),
                  
                        const Text("Transaction",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(14, 161, 125, 1)
                        ),)
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
