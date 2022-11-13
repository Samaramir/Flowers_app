import 'package:flutter/material.dart';
import 'package:untitled1/Shard/Text_Filed.dart';
import 'package:untitled1/pages/Register.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body:Center (
        child:Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(height: 64,
              ) ,
              const MyTextFiled(
                textInputType: TextInputType.emailAddress,
                ispassword:false,
                hinttextenter:"Enter your Email: ",
              ),


              const SizedBox(height: 30,) ,
              const MyTextFiled(
                textInputType: TextInputType.text,
                ispassword:true,
                hinttextenter:"Enter your Password: ",
                 ),


              const SizedBox(height: 30,) ,
              ElevatedButton(onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                ),
                  child: const Text('Sign in',style:TextStyle(fontSize: 19)),

              ),
              const SizedBox(height: 30,) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Do not have an account?',style: TextStyle(fontSize: 18),),
                  TextButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Register()),);


                  },
                      child: const Text('Sign up',style: TextStyle(color: Colors.black,fontSize: 18),))
                ],
              )






            ],
    ),
    ),
      ),
    );
  }
}
