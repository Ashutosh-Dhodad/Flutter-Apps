import 'package:flutter/material.dart';
import 'package:product_app/Controller/productController.dart';
import 'package:provider/provider.dart';



class wishlist extends StatefulWidget{
  const wishlist({super.key});

  State createState()=>_wishListState();
}

class _wishListState extends State{
  

  Widget build(BuildContext context){
     var providerobj=Provider.of<productController>(context, listen: false);
     var wishlistProviderobj=Provider.of<wishListController>(context, listen: false);
 
    return Scaffold(
      appBar: AppBar(
        title: const Text("WishList"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body:ListView.builder(
          itemCount: wishlistProviderobj.listOfWishlistProducts.length,
          itemBuilder: (context, index) {

           
           if(wishlistProviderobj.listOfWishlistProducts[index].isFavorite){
            
            
             return Container(
              height: 500,
              width: 600,
              margin:const EdgeInsets.all(20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black), color: const Color.fromARGB(255, 149, 170, 158)),
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.network(
                       "${providerobj.listOfProducts[index].imgUrl}"
                    ),
                  ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                     Consumer<productController>(builder: (context, value, child){
                        return GestureDetector(
                          onTap: () {
                            providerobj.addToFavorite(index: index);

                            if(providerobj.listOfProducts[index].isFavorite){
                              Provider.of<wishListController>(context, listen: false).addDataToWishlist(obj:providerobj.listOfProducts[index]);
                            }  
                          },

                          child: Icon(
                            (providerobj.listOfProducts[index].isFavorite)? Icons.favorite_rounded : Icons.favorite_outline_rounded,
                             color: (providerobj.listOfProducts[index].isFavorite)? Colors.red : Colors.black,
                          ),
                        );
                     }),

                    const SizedBox(
                      width: 5,
                    ),

                    Text(
                      "Product Name : ""${providerobj.listOfProducts[index].imgName}",
                      style:const TextStyle(
                        color: Colors.white
                      ),
                    ),

                    const SizedBox(
                      width: 15,
                    ),

                    Text(
                      "Price : ""${providerobj.listOfProducts[index].price}",
                      style:const TextStyle(
                        color: Colors.white
                      ),
                    ),

                    const SizedBox(
                      width: 8,
                    ),


                  ],
                 ),

                 
                    GestureDetector(
                      onTap: () {
                       
                        providerobj.addQuantity(index);
                      },
                      child:Container(
                        height: 25,
                        width: 25,
                        decoration:const BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const SizedBox(
                      
                      height: 10,
                    ),

                    Consumer(builder: (context, value, child){
                        return Text(
                           "Product count : ""${Provider.of<productController>(context).listOfProducts[index].productCount}",
                          style:const TextStyle(
                            color: Colors.white
                          ),
                        );
                    }),

                    const SizedBox(
                      height: 10,
                    ),

                    GestureDetector(
                      onTap: () {
                     
                          providerobj.removeQuantity(index);
                      },

                      child:Container(
                        height: 25,
                        width: 25,
                        decoration:const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    )
                ],
              ),
            );
              }
              
          }
        )
    );
  }
}