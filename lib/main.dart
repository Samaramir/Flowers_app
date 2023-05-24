import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Provider/cart.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/pages/Home.dart';
import 'package:untitled1/pages/login.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ShopFlowers());
}

 class ShopFlowers extends StatelessWidget {
   const ShopFlowers({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return ChangeNotifierProvider(
       create: (BuildContext context) {return Cart();},
       child: MaterialApp(
           title: "myApp",
           debugShowCheckedModeBanner: false,
           home: StreamBuilder(
             stream: FirebaseAuth.instance.authStateChanges(),
             builder: (context, snapshot) {
               if (snapshot.hasData) {return const SamarHomePage();}
               else { return const Login();  }
             },
           )),
     );
   }
 }
