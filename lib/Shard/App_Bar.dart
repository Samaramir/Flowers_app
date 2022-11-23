import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/Provider/cart.dart';
import 'package:untitled1/pages/Check_out.dart';
class ProductsandPrice extends StatelessWidget {
  const ProductsandPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(
        builder:((context,cartInstance,child){
          return Row(
            children:[
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child:Container(
                        padding:const EdgeInsets.all(5),
                        decoration:const BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle),
                        child:Text('${cartInstance.SelectedProducts.length}',
                          style: const TextStyle(fontSize: 16,color: Color.fromARGB(255, 0, 0, 0),

                          ),
                        )),
                  ),


                  IconButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> const CheckOut(),),);
                  },
                    icon: const Icon(Icons.add_shopping_cart),
                  ),

                ],
              ),

              Padding(

                padding: const EdgeInsets.only(right: 12),
                child: Text('\$ ${cartInstance.price}',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          );
        }));
  }
}
