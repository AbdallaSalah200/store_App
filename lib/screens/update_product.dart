import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class UpdateProductPage extends StatefulWidget {
   UpdateProductPage({super.key});
static String id ='UpdateProductPage';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
   String ? produtName, image , description;

   double ? price ;
 bool  isLoading =false;
  @override
  Widget build(BuildContext context) {
    ProductModel  product =ModalRoute.of(context)!.settings.arguments as ProductModel ;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Update Product',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
    
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                SizedBox(height: 100,),
                CustomFormTextField(
                  onchnaged: (data){
             produtName=data ;
                  },
                  hinttext:' Product name',
                ),
                SizedBox(height:10,),
                CustomFormTextField(
                   onchnaged: (data){
                description   =data ;
                  },
                  hinttext:'description ',
                ),
                SizedBox(height:10,),
                CustomFormTextField(
                   onchnaged: (data){
             price=double.parse(data)  ;
                  },
                  hinttext:' Price',
                  inputtype: TextInputType.number,
                ),
                SizedBox(height:10,),
                CustomFormTextField(
                   onchnaged: (data){
             image=data ;
                  },
                  hinttext:' image',
                ),
                SizedBox(height:50,),
                CustomButton(
                  ontap: ()async{
                    isLoading=true;
                    setState(() {
                      
                    });
                    try {
               await updateproduct(product);
                print('success');
                       } catch (e) {                   
                          print(e.toString());
                       }
                    isLoading =false;
                    setState(() {
                      
                    });
                  },
                  
                  text: 'Update')
              ],
            ),
          ),
        ),
      ),
    );
  }
 Future<void>  updateproduct(ProductModel product)async {
   await UpdateProductService().updateproduct(
    id: product.id,
      title: produtName==null?product.title:produtName!, 
    price: price==null?product.price:price!.toString(),
     desc: description==null?product.description:description!,
     image: image==null?product.image:image!,
      category: product.category);
  }
}