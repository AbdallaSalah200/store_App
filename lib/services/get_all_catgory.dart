import 'dart:convert';
import '../helper/api.dart';
import '../models/product_model.dart';
import 'package:http/http.dart'as http;


class AllCategoriesServices{
  Future<List<dynamic>> getallcategories ()async{
   List<dynamic> data =await Api ().get(uri:' https://fakestoreapi.com/products/categories');
  
  return data;
}
}