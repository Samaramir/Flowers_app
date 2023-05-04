import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/Provider/cart.dart';
import 'package:untitled1/Shard/App_Bar.dart';
import 'package:untitled1/pages/login.dart';
class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartInstance =Provider.of<Cart>(context);
    return Scaffold(
      appBar:AppBar(
        title: const Text('Shopping Cart'),
        backgroundColor:Colors.green,
        actions: const [
          ProductsandPrice()
        ],),
      body:Column(
        children: [SingleChildScrollView(
          child:SizedBox(height: 300,
            child: ListView.builder(padding: const EdgeInsets.all(8),
                itemCount:cartInstance.SelectedProducts.length ,
                itemBuilder: (BuildContext context,int index){
                return Card(
                  child: ListTile(title: Text(cartInstance.SelectedProducts[index].name),
                    subtitle: Text('${cartInstance.SelectedProducts[index].price}'
                        '-$cartInstance.SelectedProducts[index].location'),
                    leading: CircleAvatar(backgroundImage: AssetImage(cartInstance.SelectedProducts[index].imgpath),),
                    trailing: IconButton(onPressed: (){
                      cartInstance.delete(cartInstance.SelectedProducts[index]);
                      }, icon:const Icon(Icons.remove)),
                  ),
                );

          }),
          ),
    ),
       ElevatedButton(onPressed:(){},
         style: ButtonStyle(
           backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
           padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
           shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
         ),
           child:TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=> const Login(),),); }, child:Text( 'pay\$${cartInstance.price} ' ,),),
           //Text('pay\$${cartInstance.price}',style: const TextStyle(fontSize: 19),),
          // Navigator.push(context,MaterialPageRoute(builder: (context)=> const Login(),),);
       )
        ],
      ));
  }
}
