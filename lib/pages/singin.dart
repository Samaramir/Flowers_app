import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/Provider/google_signin.dart';
import 'package:untitled1/Shard/contants.dart';
import 'package:untitled1/pages/Register.dart';
import 'package:untitled1/pages/forget_password.dart';

import '../Shard/snackbar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isVisable = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  signIn() async {
    setState(() {
      isLoading = true;
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, "ERROR :  ${e.code} ");
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final googleSignInProvider = Provider.of<GoogleSignInProvider>(context);
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Email : ",
                      suffixIcon: const Icon(Icons.email))),
              const SizedBox(
                height: 33,
              ),
              TextFormField(
                  validator: (value) {
                    return value!.length < 8
                        ? "Enter at least 8 characters"
                        : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: isVisable ? true : false,
                  decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Password : ",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisable = !isVisable;
                            });
                          },
                          icon: isVisable
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off)))),
              const SizedBox(
                height: 23,
              ),
              ElevatedButton(
                onPressed: () async {
                  await signIn();
                  if (!mounted) return;
                  // showSnackBar(context, "Done ... ");
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purple[800]),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                child: isLoading
                    ? const CircularProgressIndicator(
                  color: Colors.white,
                )
                    : const Text(
                  "Sign in",
                  style: TextStyle(fontSize: 19),
                ),
              ),

              const SizedBox(
                height: 9,
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: const Text("Forgot password?",
                    style: TextStyle(
                        fontSize: 18, decoration: TextDecoration.underline)),)
              ,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Do have an account?',
                    style: TextStyle(fontSize: 18),),
                  TextButton(onPressed: () {
                        Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const Register()),);},
                      child: const Text('sign up', style: TextStyle(fontSize: 18, decoration: TextDecoration.underline)))
                ],
              ),
              const SizedBox(height: 17,),
              const SizedBox(width: 299,),
              SizedBox(width: 299, child: Row(children: const [
                    Expanded(child: Divider(thickness: 0.6,)),
                    Text("OR", style: TextStyle(),),
                    Expanded(child: Divider(thickness: 0.6,)),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 27),
                child: GestureDetector(onTap: () {
                    googleSignInProvider.googlelogin();},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          // color: Colors.purple,
                            color: const Color.fromARGB(255, 200, 67, 79),
                          width: 1,
                             )),
                    child: SvgPicture.asset(
                      "images/icons/google.svg",
                      color: const Color.fromARGB(255, 200, 67, 79),
                      height: 27,
                    ),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
