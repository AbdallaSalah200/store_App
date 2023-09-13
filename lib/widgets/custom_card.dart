import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product.dart';


class CustomwCard extends StatelessWidget {
   CustomwCard({
    required this.product,
    super.key,
  });
ProductModel product ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                  BoxShadow(
                    blurRadius:10,
                  color: Colors.grey.withOpacity(.2),
                  spreadRadius: 0,
                  offset: Offset(10, 10),
                   ),
              ]
            ),
            child: Card(
              elevation: 10,
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(product.title.substring(0,6),style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),),
                   const  SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(r'$' '${product.price.toString()}',style: TextStyle(
                      fontSize: 16, 
                    ),),
                 const    Icon(Icons.favorite,color: Colors.red,)
                      ],
                    )
                  ]),
              ),
            ),
          ),
         Positioned   
         ( 
          right: 32,
          top:- 32,
          child: Image.network(product.image,height: 80,width: 80,))      
        ],     
      ),
    );
  }
}