import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProduct
 {
 Future<ProductModel> addproduct ({required String title, required double price, required String desc ,required String image ,required String category })async{
Map<String,dynamic> data = await Api().post(url: 'https://fakestoreapi.com/products', 
body:{ 'title': title,
'price': price,
'description': desc,
'image': image,
'category': category,
}
);
return ProductModel.fromjson(data);
 }
}