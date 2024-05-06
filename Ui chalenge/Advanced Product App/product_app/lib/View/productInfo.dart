import 'package:flutter/material.dart';
import 'package:product_app/Controller/productController.dart';
import 'package:product_app/Model/productModel.dart';
import 'package:provider/provider.dart';


import 'displayProduct.dart';

class productInfo extends StatefulWidget{
  const productInfo({super.key});

  State createState()=>_productInfoState();
}

class _productInfoState extends State{
  
  void clearTextField(){
    imgUrlController.clear();
    imgNameController.clear();
    priceController.clear();
  }

  TextEditingController imgUrlController=TextEditingController();
  TextEditingController imgNameController=TextEditingController();
  TextEditingController priceController=TextEditingController();
  TextEditingController productCountController=TextEditingController();

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Demo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SizedBox(
            height: 60,
            width: 350,
             child: TextFormField(
                  controller: imgUrlController,
                  decoration:const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                
                    hintText: 'enter image url',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
           ),
            
            const SizedBox(
              height: 30,
            ),

             SizedBox(
              height: 60,
              width: 350,
               child: TextFormField(
                  controller: imgNameController,
                  decoration:const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                
                    hintText: 'enter image name',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
             ),
            

            const SizedBox(
              height: 30,
            ),

           SizedBox(
            height: 60,
            width: 350,
             child: TextFormField(
                  controller: priceController,
                  decoration:const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                
                    hintText: 'enter price',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
           ),

            const SizedBox(
              height: 50,
            ),

            ElevatedButton(
              onPressed: (){
                 var obj=productModel(
                  imgUrl: imgUrlController.text,
                  imgName: imgNameController.text,
                  price: priceController.text,
                  productCount: 0,
                  isFavorite: false,
                );
               
               Provider.of<productController>(context, listen: false).addProducts(pobj: obj);
              }, 
              child: const Text("Add Product")
              ),

              const SizedBox(
                height: 10,
              ),

            ElevatedButton(
              onPressed: (){
               
                clearTextField();
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const displayProduct()));
              }, 
              child: const Text("Submit"))
          ],
        ),
      )
    );
  }
}