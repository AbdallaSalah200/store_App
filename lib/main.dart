import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/update_product.dart';
void main() {
  runApp(const StroeApp());
}
class StroeApp extends StatelessWidget {
  const StroeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        HomePage.id:(context) => const  HomePage(),
        UpdateProductPage.id:(context)=> UpdateProductPage(),
      } ,
      initialRoute: HomePage.id,

    );
  }
}
