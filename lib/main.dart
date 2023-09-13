import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/update_product.dart';
void main() {
  runApp(const stroeApp());
}
class stroeApp extends StatelessWidget {
  const stroeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        HomePage.id:(context) => HomePage(),
        UpdateProductPage.id:(context)=> UpdateProductPage(),
      } ,
      initialRoute: HomePage.id,

    );
  }
}
