
import 'package:flutter/material.dart';
import 'loginPage.dart';

class start_screen extends StatefulWidget{

  const start_screen({super.key});

  State createState()=>_start_screenState();
}

class _start_screenState extends State{

  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
         const SizedBox(
            
            height: 38,
            
          ),

          Expanded(
          
            child: Image.network(
              "https://s3-alpha-sig.figma.com/img/3acd/de03/3af97d728934d9da1f37e8707df89cfa?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dnDjmhVZ64ND2Xg2AypUIenXyAaAfKasX~teNewTQzjohd0Adb9HAXfE-mwLioe~b6wQvoRA4qtMy4~bccR5cqf1eef39XlrHqTCYUgmsLpwfSOuu0QM5K9GCde1Q6VJLQDJtqEWR~8GM29-oIdPDOmPTzs18EgZSDXgN1l0oJmKAA3Y-rfN9aZlmcnxKbSwIcblLfWEG-pDDKOE8JpGpWWWl84hO4EOLr3hvuLU30y5oQc7n8Z1qB4R1eznaUR8QYkIBwfAD58PBiy94Atoy~5mFGuC02ZK8ubfrioJkTwnagcKksBhH28HkvQE49GFBcdSxZ3uaZTQvloze-DZow__"
            ),
          ),

          SizedBox(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Text("Enjoy your",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    
                    )
                    ),
                  ],
                ),

                
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     SizedBox(
                      width: 70,
                    ),
                    Text("life with",
                     style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    
                    )
                    ),

                    Text(" Plants",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ))
                  ],
                ),

                const SizedBox(
                  height: 60,
                ),

                Container(
                  width: 320,
                  height: 50,
                  decoration: BoxDecoration(gradient:const  LinearGradient( begin:Alignment.bottomCenter,  end: Alignment.topCenter, colors: [Color.fromRGBO(62, 102, 24, 1), Color.fromRGBO(124, 180, 70, 1)]), borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    onPressed: (){
                      
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const loginPage()));
           
                    }, 
                   

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),

                   child:const Text("Get Started  >",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white,
                    
                    ),
                    ),
                   )
                    ),


                Container(
                  height: 100,
                )
              ],

            ),
          )
        ],
      ),
    );
  }
}