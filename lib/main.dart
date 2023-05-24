import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Provider/cart.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/Provider/google_signin.dart';
import 'package:untitled1/Shard/snackbar.dart';
import 'package:untitled1/pages/Home.dart';
import 'package:untitled1/pages/login.dart';
import 'package:untitled1/pages/verify_email.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ShopFlowers());
}

 class ShopFlowers extends StatelessWidget {
   const ShopFlowers({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MultiProvider(
       providers: [
         ChangeNotifierProvider(create: (context) {
           return Cart();
         }),
         ChangeNotifierProvider(create: (context) {
           return GoogleSignInProvider();
         }),
       ],
       child: MaterialApp(
           title: "myApp",
           debugShowCheckedModeBanner: false,
           home: StreamBuilder(
             stream: FirebaseAuth.instance.authStateChanges(),
             builder: (context, snapshot) {
               if (snapshot.connectionState == ConnectionState.waiting) {
                 return const Center(
                     child: CircularProgressIndicator(
                       color: Colors.white,
                     ));
               } else if (snapshot.hasError) {
                 return showSnackBar(context, "Something went wrong");
               } else if (snapshot.hasData) {
                 return const VerifyEmailPage(); // home() OR verify email
               } else {
                 return const Login();
               }
             },
           )),
     );
   }
 }
