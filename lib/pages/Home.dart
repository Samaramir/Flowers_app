import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/Provider/cart.dart';
import 'package:untitled1/Shard/App_Bar.dart';
import 'package:untitled1/model_Iteam/Iteams.dart';
import 'package:untitled1/pages/Check_out.dart';
import 'package:untitled1/pages/Deatiles_Screan.dart';
import 'package:untitled1/pages/login.dart';



class SamarHomePage extends StatelessWidget {

  const SamarHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 20),
          itemCount:products.length,
         itemBuilder:(BuildContext  context,int index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=>Details(prducte:products[index]),
              ),);


            },
            child: GridTile(
              footer: GridTileBar(
              trailing: Consumer<Cart>(
                builder: ((context,cart,child){
                  return IconButton(
                    color: const Color.fromARGB(255, 62, 94, 70),
                    onPressed: (){
                      cart.add(products[index]);

                    },
                    icon:const Icon(Icons.add),);
                }),
              ),
              leading: const Text('\$12.99'),
              title: const Text('',
              ),
            ),
              child:Stack(

              children:[
                Positioned(

                  top:-3,
                  bottom:-6,
                  right: 0,
                  left: 0,

                  child:ClipRRect(
                      borderRadius:BorderRadius.circular(62),
                      child: Image.asset(products[index].imgpath)),
                ),
              ]),
            ),
          );
        }),
      ),

      drawer: Drawer(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                    const UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        image:DecorationImage(
                          image: AssetImage('images/samar.jpg'),
                          fit: BoxFit.cover,
                        )
                      ),
                        accountName: Text('samar Amir',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                        accountEmail:Text('samar@gmail.com') ,
                    currentAccountPictureSize: Size.square(99),
                    currentAccountPicture:CircleAvatar(radius: 55,
                    backgroundImage: AssetImage('images/profile.jpg'),),),
                    ListTile(
                    title:const Text('Home'),
                    leading:const Icon(Icons.home),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> const SamarHomePage (),),);
                    }),
                    ListTile(
                    title:const Text('My Products'),
                    leading:const Icon(Icons.add_shopping_cart) ,
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> const CheckOut(),),);
                    }),
                    ListTile(
                    title:const Text('About'),
                    leading:const Icon(Icons.help_center) ,
                    onTap: (){}),
                    ListTile(
                    title:const Text('Logout'),
                    leading:const Icon(Icons.exit_to_app) ,
                  onTap: (){
                  }),
                ListTile(
                    title:const Text('Login'),
                    leading:const Icon(Icons.exit_to_app) ,
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> const Login(),),);
                    }),
              ],
            ),
                 Container(
                   margin: const EdgeInsets.only(bottom: 12),
                   child: const Text('Developed by Samar Amir 2022',style: TextStyle(fontSize: 16),),
                 )
          ],
        ),
      ),
      appBar: AppBar(
          actions: const [
            ProductsandPrice(),


          ],
               backgroundColor:Colors.green,
               title: const Text('Home'),
    ));

  }
}
