import 'dart:convert';
import '../helper/api.dart';
import 'package:http/http.dart'as http;
import 'package:store_app/models/product_model.dart';
 import 'dart:core';

 class AllProductSrvices{
 Future<List <ProductModel> > getCategory({required String categoryName}) 
  async{
 List<dynamic> data =await Api ().get(uri:' https://fakestoreapi.com/products/category/${categoryName}');
 
 
  List<ProductModel> prodictList =[];
  for(int i=0;i<data.length;i++){
   prodictList.add(ProductModel.fromjson(data[i]));

}
  return prodictList ;
  }
}