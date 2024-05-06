 import 'package:flutter/material.dart';
 import 'package:google_fonts/google_fonts.dart';
 import 'package:intl/intl.dart';
  import 'package:path/path.dart';
 import 'package:sqflite/sqflite.dart';

 dynamic database;

 class assignment extends StatefulWidget{
   const assignment({super.key});

   @override
   State createState()=>_assignmentState();
 }

 class Task{
   int? cardId;
   final String Title;
   final String Description;
   DateTime? Date;

   Task({this.cardId, required this.Title, required this.Description, this.Date});

   Map<String, dynamic> taskMap(){
     return{
       'Title':Title,
       'Description':Description,
       'Date':Date,
    };
   }

   String toString(){
     return '{Title:$Title, Description:$Description, Date:$Date}';
   }
 }
 Future insertTaskData(Task obj)async{
   final localDB=await database;

   await localDB.insert(
     'taskTable',
     obj.taskMap(),
     conflictAlgorithm:ConflictAlgorithm.replace,
   );
 }

 Future<List<Task>> getTaskData()async{
   final localDB = await database;

   List<Map<String,dynamic>> taskEntry=await localDB.query('taskTable');
   return List.generate(taskEntry.length, (i){
     return Task(
       cardId: taskEntry[i]['cardId'],
      Title: taskEntry[i]['Title'],
       Description: taskEntry[i]['Description'],
       Date: taskEntry[i]['Date'],
       );
   });
 }


 class _assignmentState extends State{

   TextEditingController dateController=TextEditingController();
   FocusNode dateFocusNode=FocusNode();
   TextEditingController titleController=TextEditingController();
   FocusNode titleFocusNode=FocusNode();
   TextEditingController descriptionController=TextEditingController();
   FocusNode descriptionFocusNode=FocusNode();

   List inputString=[];
   String _title='';
  String _description='';
   DateTime? _date;

   void cleartext(){
     setState(() {
        titleController.clear();
     descriptionController.clear();
     dateController.clear();
     });
   
   }
   void showBottomSheet(context){
     showModalBottomSheet(
       isScrollControlled: true,                                        //to scroll the textfield on upwards
       shape: const RoundedRectangleBorder(
                 borderRadius: BorderRadius.only(
     topLeft: Radius.circular(30),
           topRight: Radius.circular(30),
         )
      ),
      isDismissible: true,
      context: context,
      builder: (context){
        return Padding(
          padding:EdgeInsets.only(
            left: 20,
            right: 20,
            bottom:MediaQuery.of(context).viewInsets.bottom,           //to avoid overlaping of keyboard on textfield
            
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,                             //textfield takes min size in column
            children: [

              const SizedBox(
                height: 10,
              ),

                  Text(
                    "Create Task",
                      style:GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                  Column(
                    children: [
                      Text(
                        "Title",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(0, 139, 148, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),

                  const SizedBox(
                    height: 3,
                  ),

                  TextField(
                    controller:titleController,
                    focusNode:titleFocusNode ,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.redAccent,
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.redAccent,
                        ),

                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onChanged: (value){
                     setState(() {
                       _title=value;
                       
                     });
                    },
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                  Text(
                    "Description",
                    style: GoogleFonts.quicksand(
                      color:const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  TextField(
                    controller: descriptionController,
                    focusNode: descriptionFocusNode,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.redAccent,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.redAccent,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onChanged: (value){
                      setState(() {
                        _description=value;
                      });
                      
                    },
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                  Text(
                    "Date",
                    style:GoogleFonts.quicksand(
                      color:const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  TextField(
                    controller:dateController,
                    focusNode: dateFocusNode,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.redAccent,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.red
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    

                    onTap:() async{
                      DateTime? pickeddate=await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2025),
                      );
                      String formatedDate=DateFormat.yMMMd().format(pickeddate!);
                      setState(() {
                        dateController.text=formatedDate;
                        _date = pickeddate;
                      });
                    },
                  ),
                    ]
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)),

                      child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),

                          backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                          
                        ),
                        onPressed: (){
                          Navigator.of(context).pop();
                           setState(() {
                           
                           Task newTask=Task(
                           Description: _description,
                           Title: _title,
                           Date: _date,
                        );
                        if(_title.isEmpty && _description.isEmpty){
                          setState(() {
                            inputString.add(newTask);
                        cleartext();
                          });
                      
                        }
                      });
                        },

                        child: Text(
                          "Submit",
                          style: GoogleFonts.quicksand(
                            color:Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                          ),
                        ),
                      ),
                  ),

                  const SizedBox(
                    height: 30,
                  )
                ],
          ),   
        );
      });
  }

  var listofColors=[
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.pink,
        centerTitle: true,
        title: Text(
          "To Do App",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
      ),

      body:ListView.builder(
        itemCount: inputString.length,
        itemBuilder: (context, index){
          return Padding(
            padding:const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 16,
            ),

            child: Container(
              decoration: BoxDecoration(
               color: listofColors[index % listofColors.length],
                boxShadow: const[
                   BoxShadow(
                     offset: Offset(10, 10),
                     color: Colors.blueAccent,
                     blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),

                          child: const Icon(Icons.image),
                        ),

                        const SizedBox(
                          width: 20,
                        ),

                        Expanded(
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                inputString[index].Title,
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color:const Color.fromRGBO(0, 0, 0, 1)
                                ),
                              ),

                              const SizedBox(
                                height: 10,
                              ),

                              Text(
                                  inputString[index].Description,
                                  style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(84, 84, 84, 1),
                                ),
                              ),

                              const SizedBox(
                                height: 3,
                              ),

                              if (inputString[index].Date != null)
                              Text("${inputString[index].Date}"),
                            ],
                          ),
                          ),
                      ],
                    ),

                    const SizedBox(
                      height: 14,
                    ),

                    Padding(
                      padding:const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    editask(index);
                                  });
                                },
                                child: const Icon(Icons.edit_outlined,
                                color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),

                              const SizedBox(
                                width: 10,
                              ),

                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    deletetask(index);
                                  });
                                },
                                child: const Icon(Icons.delete_outline,
                                color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                       )
                  ],
                ),
                ),
            ),
          );
        },
      ),

     floatingActionButton: FloatingActionButton(
        backgroundColor:const Color.fromARGB(255, 198, 158, 89),
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
         onPressed: (){
   showBottomSheet(context);
                   },
         child: const Icon(Icons.add,
         color: Colors.white),
       ),
     );
   }

   void editask(int index){
     setState(() {
       showBottomSheet(context);
     });
    
   }

   void deletetask(int index){
     inputString.removeAt(index);
   }
 }