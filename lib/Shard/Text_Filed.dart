import 'package:flutter/material.dart';

class MyTextFiled extends StatelessWidget {
  final TextInputType textInputType;
  final String hinttextenter;
  final bool ispassword;

  const MyTextFiled({Key? key,
  required this.textInputType,
  required this.ispassword,
  required this.hinttextenter,

  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText:ispassword,
      decoration: InputDecoration(
        hintText: hinttextenter,
        enabledBorder: OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,)),
        filled:true,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}
