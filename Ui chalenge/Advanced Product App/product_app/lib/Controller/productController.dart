import 'package:flutter/material.dart';
import 'package:product_app/Model/productModel.dart';


class productController extends ChangeNotifier{

    
  List<productModel> listOfProducts=[];
 
   void addProducts({required productModel pobj}){
    listOfProducts.add(pobj);
  }


  void addQuantity(int index){
    listOfProducts[index].productCount=listOfProducts[index].productCount+1;
    notifyListeners();
  }


  void removeQuantity(int index){
    listOfProducts[index].productCount=listOfProducts[index].productCount-1;
    notifyListeners();
  }


  void addToFavorite({required int index}){
    listOfProducts[index].isFavorite=!listOfProducts[index].isFavorite;
    notifyListeners();
  }

 
}

class wishListController with ChangeNotifier{
  List<productModel> listOfWishlistProducts=[];

  void addDataToWishlist({productModel? obj}){
    listOfWishlistProducts.add(obj!);
  }

  void removeFromWishlist({required int index}){
    listOfWishlistProducts.removeAt(index);
    notifyListeners();
  }
}

