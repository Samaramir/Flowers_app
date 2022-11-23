import 'package:flutter/material.dart';
import 'package:untitled1/Provider/cart.dart';
import 'package:untitled1/pages/Home.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(const ShopFlowers());
}

 class ShopFlowers extends StatelessWidget {
   const ShopFlowers({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return ChangeNotifierProvider(
       create: (BuildContext context) {return Cart();},
       child: MaterialApp(
         debugShowCheckedModeBanner: false,
         home:SamarHomePage(),

       ),
     );
   }
 }
