import 'package:flutter/material.dart';
import 'package:product_app/Controller/productController.dart';
import 'package:product_app/View/productInfo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers:[
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return productController();
          } 
          ),

          ChangeNotifierProvider(
            create:(BuildContext context) {
              return wishListController();
            }
             )
      ],

      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          title:  "Provider Demo",
          home: productInfo(),
        );
      },
       );
  }
}
