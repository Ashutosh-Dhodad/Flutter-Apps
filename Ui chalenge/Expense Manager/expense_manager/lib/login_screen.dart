import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_screen.dart';



class login_screen extends StatefulWidget{
  const login_screen({super.key});

  State createState()=>_login_screenState();
}

class _login_screenState extends State{

  final TextEditingController _userNameController=TextEditingController();
  final TextEditingController _passWordController=TextEditingController();

  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
      body: 
         Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:const EdgeInsets.only(top: 100),
                    child:const Image(image: AssetImage("assets/images/app_logo.png"))
                  ),
                      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin:const EdgeInsets.only(top: 50, left: 50),
                        child: const Text("Login To Your Account",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    ],
                  ),
                      
                  const SizedBox(
                    height: 30
                  ),
                      
                  Container(
                    height: 50,
                    width: 280,
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white, boxShadow:const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.15), blurRadius: 20, spreadRadius: 1)],),
                    child: TextFormField(
                      controller:_userNameController,
                      decoration:InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                    
                        enabledBorder:  OutlineInputBorder(
                          borderSide:const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Username"
                      ),
                    
                    
                    ),
                  ),
                      
                   const SizedBox(
                    height: 20
                  ),
                      
                  Container(
                    height: 50,
                    width: 280,
                    decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white, boxShadow:const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.15), blurRadius: 20, spreadRadius: 1)],),
                    child: TextFormField(
                      controller:_passWordController,
                      decoration:InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                    
                        enabledBorder:  OutlineInputBorder(
                          borderSide:const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Password"
                      ),
                    
                    
                    ),
                  ),
                      
                  const SizedBox(
                    height: 40,
                  ),
                      
                  Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green,),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>home_screen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: const Text("Sign In",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),)),
                  ),
                      
                  const Spacer(),
                      
                  Container(
                    margin:const EdgeInsets.only(bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         const Text("Don't have an account? "),
                         GestureDetector(
                          onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const register_screen()));
                          },
                           
                             child:const Text("Sign up",
                                               style: TextStyle(
                              color: Colors.green
                                               ),),
                           
                         )
                      ],
                    ))
                ],
              ),
            ),
    );
  }
}