import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Shard/contants.dart';
import 'package:untitled1/pages/Register.dart';

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

  signIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        });

    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, "ERROR :  ${e.code} ");
    }

// Stop indicator
    if (!mounted) return;
    Navigator.pop(context);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  // we return "null" when something is valid
                  validator: (email) {
                    return email!.contains(RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))
                        ? null
                        : "Enter a valid email";
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: decorationTextfield.copyWith(
                      hintText: "Enter Your Email : ",
                      suffixIcon: const Icon(Icons.email))),
              const SizedBox(
                height: 23,
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
                child: const Text('Sign In', style: TextStyle(fontSize: 19)),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Do have an account?',
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ))
                ],
              ),
              const SizedBox(
                height: 17,
              ),
              const SizedBox(
                width: 299,
              ),
              SizedBox(
                width: 299,
                child: Row(
                  children: const [
                    Expanded(
                        child: Divider(
                      thickness: 0.6,
                    )),
                    Text(
                      "OR",
                      style: TextStyle(),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.6,
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
