
import 'package:flutter/material.dart';
import 'verificationPage.dart';

class loginPage extends StatefulWidget{

  const loginPage({super.key});

  State createState()=>loginPageState();
}

class loginPageState extends State{

  final TextEditingController mobileNumber=TextEditingController();

  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();

  void clearTextField(){
    mobileNumber.clear();
  }

  bool validateDetails(){
    String mobNo=mobileNumber.text;
    if(mobNo=="8788243121"){
      return true;
    }
    return false;
  }

  Widget build(BuildContext context){
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
           Container(
            margin:const EdgeInsets.only(top: 40),
            child: Image.asset(
              "assets/images/circleImg.png",color:Color.fromRGBO(204, 211, 196, 1),
            ),
       
          ),
       
          const SizedBox(
            height: 20,
          ),
       
       
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Log in",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 30
                      
                ),
                ),
             ],
           ),
        
       
          const SizedBox(
            height: 40,
          ),
       
      
          Padding(
          
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Form(
                 
                  key: _formKey,
                  child: TextFormField(
                    controller: mobileNumber,
                    decoration: InputDecoration(
                    
                      prefixIcon:const Icon(Icons.phone_outlined),
                      hintText: "Mobile Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color:Color.fromRGBO(204, 211, 196, 1), width: 2),
                      
                      ),
                      enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(color:Color.fromRGBO(204, 211, 196, 1), width: 2),
                      ),
                  
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                         borderSide: const BorderSide(color:Color.fromRGBO(204, 211, 196, 1), width: 2),
                      ),
                    ),
                  
                    validator: (value){
                   
                      if(value==null || value.isEmpty){
                        return "Please Enter Mobile Number";
                      }else{
                        return null;
                      }
                    },
                  
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                  ),
                ),
            ),
          ),
          
       
          const SizedBox(
            height: 30,
          ),
       
           Container(
              margin:const EdgeInsets.only(left:20),
                    width: 320,
                    height: 50,
                    decoration: BoxDecoration(gradient:const  LinearGradient( begin:Alignment.bottomCenter,  end: Alignment.topCenter, colors: [Color.fromRGBO(62, 102, 24, 1), Color.fromRGBO(124, 180, 70, 1)]), borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      onPressed: (){
                        
                         bool loginValidate=_formKey.currentState!.validate();

                         bool showthirdPage=false;
                         
                         if(loginValidate && validateDetails()){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text("Login Successfull",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                              color: Colors.white
                            ),),

                            backgroundColor: Colors.green,
                            duration: const Duration(seconds: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                            ),

                            behavior: SnackBarBehavior.floating,
                            width: 275,
                            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                          ));

                          showthirdPage=true;
                          clearTextField();
                         }else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text("Login failed",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),),

                            backgroundColor: Colors.red,
                            duration: const Duration(seconds: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),

                            behavior: SnackBarBehavior.floating,
                            width: 275,
                            padding: const EdgeInsets.only(left: 50, top: 10, bottom: 10),
                          ));
                         }

                         if(showthirdPage==true){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context)=>const verificationPage()), );
                         }

             
                      }, 
                     
       
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
       
                     child:const Text("Log in",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white,
                      
                      ),
                      ),
                     )
                      ),
       
                    Container(
                      margin:const EdgeInsets.only(top: 80),
                      child: Image.network(
                        "https://s3-alpha-sig.figma.com/img/9678/b1d7/e4aa1a4777e388bd065fb4838616e81b?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=C2uDbCKKwhiNGOdbqsMKCaghW5qluqyvFXIKPQdru~k11ZYo4DW9VOIGGWuWFAqkyYWx1sikWMvyZhSx7nvsQByee-IuvP27JHriXnHvASjPyb3LgtBdA9XLRL6SoRr9c2lHtDEGtxzFUXeo~6th49HT5u~r3piK1qvsWHLTwnN8IR5GTcOC0mat5pM7tnJe3E9jrvnrA-H2vIVQzngTo8wPSF8YAvltMSM0dfdE4ESs7gyXSclVPe9RFnqBlY0PZQQmvCHbQ2jZBLsjBHuFZ58mMgZ3uPoti5VbwGAtqwzHha3g9b3TXCx12tZLmcqTxeF3Kh0Sh1w0Zj8PpGVLVw__",
                        height: 360,
                        width: 360,
                      ),
                    )
       
        ],
       ),
     ),
     backgroundColor:const Color.fromARGB(255, 225, 217, 223),
    );
  }
}