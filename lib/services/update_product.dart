import '../helper/api.dart';
import '../models/product_model.dart';
class UpdateProductService 
{
  Future<ProductModel> updateproduct ({required String title, required String price, required String desc ,required String image ,required String category ,required int id})async{
    print('id=$id');
Map<String,dynamic> data = await Api().put(url: 'https://fakestoreapi.com/products/$id', 
body:{ 'title': title,
'id':id,
'price': price,
'description': desc,
'image': image,
'category': category,
}
);
return ProductModel.fromjson(data);
 }
}