
import 'package:flutter/material.dart';
import 'package:untitled1/pages/Register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body:Center (
        child:Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(height: 64,
              ) ,
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66),
                ),
                width: 266,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const TextField(

                  decoration: InputDecoration(
                    icon: Icon(Icons.person ,color: Colors.black,),
                    hintText:"Enter your Email" ,
                    border: InputBorder.none,

                  ),
                ),
              ),
              const SizedBox(height: 23,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66)
                ),
                width:266,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffix: Icon(Icons.visibility,
                      color: Colors.black,
                    ),
                    icon: Icon(Icons.lock,
                      color: Colors.black,),
                    hintText: "Password",
                    border: InputBorder.none,

                  ),
                ),
              ),
              const SizedBox(height: 23,),
              ElevatedButton(onPressed: (){},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple[800]),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                ),

                child: const Text('Sign In',style:TextStyle(fontSize: 19)),

              ),
              const SizedBox(height: 30,) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Do have an account?',style: TextStyle(fontSize: 18),),
                  TextButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Register()),);


                  },
                      child: const Text('Sign up',style: TextStyle(color: Colors.black,fontSize: 18),))
                ],
              )
            ],),),),);

  }
}
