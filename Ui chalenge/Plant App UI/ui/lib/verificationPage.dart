import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'thirdPage.dart';


class verificationPage extends StatefulWidget{

  const verificationPage({super.key});

  State createState()=>_verificationPage();
}

class _verificationPage extends State{


  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        crossAxisAlignment:CrossAxisAlignment.end ,
        children: [

          Container(
            margin:const EdgeInsets.only(top: 40),
            child: const Image(image: AssetImage("assets/images/circleImg2.png"), color:Color.fromRGBO(204, 211, 196, 1),)),

          const SizedBox(
            height: 20,
          ),

          Row(
            children: [
              Container(
                margin:const EdgeInsets.only(left: 30),
                child: const Text("Verification",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700
                ),),
              ),
            ],
          ),

          const SizedBox(
            height: 15,
          ),

          Row(
            children: [
              Container(
                margin:const EdgeInsets.only(left: 30),
                child: const Text("Enter the OTP code from the phone we",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),),
              ),
            ],
          ),

          const SizedBox(
            height: 3,
          ),

           Row(
            children: [
              Container(
                margin:const EdgeInsets.only(left: 30),
                child: const Text("just sent you.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),),
              ),
            ],
          ),

          const SizedBox(
            height: 50,
          ),

          Padding(padding:const EdgeInsets.only(left: 8),
            child: Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                   
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color:const Color.fromRGBO(204, 211, 196, 1), width: 2), color: Colors.white),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration:const InputDecoration(
                        border: InputBorder.none
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    )
                  ),

                  Container(
                   
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color:const Color.fromRGBO(204, 211, 196, 1), width: 2), color: Colors.white),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration:const InputDecoration(
                        border: InputBorder.none
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    )
                  ),

                  Container(
                   
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color:const Color.fromRGBO(204, 211, 196, 1), width: 2), color: Colors.white),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration:const InputDecoration(
                        border: InputBorder.none
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    )
                  ),

                  Container(
                   
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color:const Color.fromRGBO(204, 211, 196, 1), width: 2), color: Colors.white),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration:const InputDecoration(
                        border: InputBorder.none
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    )
                  )
                ],
              )

            ),
          ),
            
          

           const SizedBox(
            height: 50,
          ),

           Row(
            children: [
              Container(
                margin:const EdgeInsets.only(left: 30),
                child:const Row(
                  children: [
                     Text("Don't receive OTP code!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),),

                     Text(" Resend",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),),

                  ],
                ),
              ),
            ],
          ),

          

          const SizedBox(
            height: 15,
          ),

          Container(
                  width: 370,
                  height: 50,
                  margin:const EdgeInsets.only(left: 30, right: 30),
                  decoration: BoxDecoration(gradient:const  LinearGradient( begin:Alignment.bottomCenter,  end: Alignment.topCenter, colors: [Color.fromRGBO(62, 102, 24, 1), Color.fromRGBO(124, 180, 70, 1)]), borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    onPressed: (){
                      
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const thirdPage()));
           
                    }, 
                   

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),

                   child:const Text("Submit",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white,
                    
                    ),
                    ),
                   )
                    ),


        ],
      ),

        backgroundColor:const Color.fromARGB(255, 225, 217, 223),
    );
  }
}