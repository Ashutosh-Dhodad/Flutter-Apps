import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class mainPage extends StatefulWidget{
  const mainPage({super.key});

  @override
  State createState()=>_mainPageState();
}

class inputTask{
  String title;
  String description;
  String date;

  inputTask({required this.title, required this.description, required this.date});
}

class _mainPageState extends State{

  TextEditingController dateController=TextEditingController();
  TextEditingController titleController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();

  void showBottomSheet(bool editfunction, [inputTask? inputTaskObj]){
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius:BorderRadius.only(
          topLeft:Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context){
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),

              Text(
                "create task",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),

              const SizedBox(
                height: 12,
              ),

              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderSide:const BorderSide(
                          color: Colors.purpleAccent
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                   Text(
                    "Description",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  TextField(
                    controller: descriptionController,
                    maxLines: 3,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderSide:const BorderSide(
                          color: Colors.purpleAccent
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                   Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  TextField(
                    controller: dateController,
                    readOnly: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.date_range_rounded),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderSide:const BorderSide(
                          color: Colors.purpleAccent
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    onTap: ()async{
                      DateTime? pickeddate=await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2025),
                        );

                        String formatedDate=DateFormat.yMMMd().format(pickeddate!);

                        setState(() {
                          dateController.text=formatedDate;
                        });
                    },
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor:Colors.red,
                    ),

                    onPressed: (){
                      editfunction? submit(editfunction, inputTaskObj):submit(editfunction);
                      Navigator.of(context).pop();
                    },

                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                        color: Colors.cyan,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
           );
      });
  }

var colorList=[
  const Color.fromRGBO(250, 232, 232, 1),
  const Color.fromRGBO(232, 237, 250, 1),
  const Color.fromRGBO(250, 249, 232, 1),
  const Color.fromRGBO(250, 232, 250, 1),
];

List inputString=[];


void submit(bool editfunction, [inputTask? inputTaskObj]){
  if(titleController.text.trim().isNotEmpty && descriptionController.text.trim().isNotEmpty && dateController.text.trim().isNotEmpty){
    if(!editfunction){
      setState(() {
        inputString.add(
        inputTask(
          title:titleController.text.trim(),
          description:descriptionController.text.trim(),
          date:dateController.text.trim(),
        )
        );
      });
    }else{
      setState(() {
        inputTaskObj!.title=titleController.text.trim();
        inputTaskObj.description=descriptionController.text.trim();
        inputTaskObj.date=dateController.text.trim();
      });
    }
  }
  clearTextField();

}

void clearTextField(){
  titleController.clear();
  descriptionController.clear();
  dateController.clear();
}

void deleteCard(inputTask inputTaskObj){
  setState(() {
    inputString.remove(inputTaskObj);
  });
}

void editCard(inputTask inputTaskObj){
  titleController.text=inputTaskObj.title;
  descriptionController.text=inputTaskObj.description;
  dateController.text=inputTaskObj.date;

  showBottomSheet(true, inputTaskObj);
}

    @override
    Widget build(BuildContext context){
      return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor:Colors.black12,
          title: Text(
            "TO DO APP",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
        ),

        body: Container(
            decoration:const BoxDecoration(
              
              image:DecorationImage(image: NetworkImage("https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg"),
              fit:BoxFit.fill
              )
              ),
              // height: 600,
              // width: 400,
           
             child: ListView.builder(
              itemCount: inputString.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 16,
                  ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: colorList[index % colorList.length],
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
                        padding: const EdgeInsets.all(10),
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
                                  width: 10,
                                ),
                   
                                Expanded(
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        inputString[index].title,
                                        style: GoogleFonts.quicksand(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromRGBO(0, 0, 0, 1),
                                        ),
                                      ),
                   
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      
                                      Text(
                                        inputString[index].description,
                                        style: GoogleFonts.quicksand(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color:const Color.fromARGB(255, 54, 42, 42),
                                        ),
                                      ), 
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
                                  Text(
                                    inputString[index].date,
                                    style: GoogleFonts.quicksand(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromARGB(255, 102, 90, 90),
                                    ),
                                  ),
                   
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                   
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          editCard(inputString[index]);
                                        },
                   
                                        child: const Icon(Icons.edit_outlined,
                                        color: Color.fromRGBO(0, 139, 148, 1),
                                        ),
                                      ),
                   
                                      const SizedBox(
                                        width: 10,
                                      ),
                   
                                      GestureDetector(
                                        onTap:(){
                                          deleteCard(inputString[index]);
                                        },
                   
                                        child:const Icon(Icons.delete_outline,
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
           ),
        

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            clearTextField();
            showBottomSheet(false);
          },
          backgroundColor: Colors.redAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          tooltip:"Add Task",
          child: const Icon(Icons.add),
        ),

      
      );
    }
  }
