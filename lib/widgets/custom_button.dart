import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
 CustomButton ({this.ontap,required this.text});
 VoidCallback ? ontap ;
String ? text ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap : ontap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 56,
        child: Center(child: Text(text!,style: TextStyle(
          color: Colors.white
        ),)),
      ),
    );
  }
}
