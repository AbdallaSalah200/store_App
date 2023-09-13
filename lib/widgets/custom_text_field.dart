import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomFormTextField extends StatelessWidget {
   CustomFormTextField({this.hinttext,this.inputtype,this.onchnaged,this.obsuyre=false});
String ?hinttext ;
bool ? obsuyre ;
TextInputType? inputtype;
Function(String)? onchnaged ;
  @override
  Widget build(BuildContext context) {
    return
     TextFormField(
      obscureText: obsuyre!,
    keyboardType: inputtype,
      onChanged: onchnaged,
            decoration: InputDecoration(
              hintText: hinttext,
          
              enabledBorder: OutlineInputBorder(
                borderSide: const  BorderSide(),
                borderRadius:BorderRadius.circular(8),
              ),border: OutlineInputBorder(
                borderSide:const    BorderSide(),
                borderRadius:BorderRadius.circular(8),
              )

          ),
          );
   
  }
}