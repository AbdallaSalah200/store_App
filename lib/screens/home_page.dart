import '../widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_product.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});
static String id ='HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       actions: [
        IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.cartPlus  ,color: Colors.black,   ),),
       ],
        centerTitle: true,
        title: Text('New trend',style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body:Padding(
        padding: const EdgeInsets.only(right:16.0,left:16.0,top: 65),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductSrvices().getallproduct(),
          builder: (context,snapshot){
          if(snapshot.hasData){
            List<ProductModel> product =snapshot.data!;
            return GridView.builder(
              itemCount: product.length,
          clipBehavior: Clip.none,
          gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        childAspectRatio: 1.3,
        mainAxisSpacing: 100,
        crossAxisSpacing: 10,
        ),
        itemBuilder:(context,index)
        {
          return CustomwCard(product: product[index],);
        } );
          }else{
            return Center(child: CircularProgressIndicator());
          }
          
        },)
      )
    );
  }
}

