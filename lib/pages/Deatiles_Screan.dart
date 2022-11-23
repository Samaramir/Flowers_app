import 'package:flutter/material.dart';
import 'package:untitled1/Shard/App_Bar.dart';
import 'package:untitled1/model_Iteam/Iteams.dart';
 class Details extends StatefulWidget {
  Item prducte ;
  Details({super.key, required this.prducte});


  @override
  State<Details > createState() => _DeatilesState();
}

class _DeatilesState extends State<Details > {
  //const Details ({Key? key}) : super(key: key);
bool isShowmore=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green,
        title: const Text('Deatiles Screan'),
        actions: const [
          ProductsandPrice()
        ],
         ),
      body:SingleChildScrollView(
        child:Column(
            children:[
              Image.asset(widget.prducte.imgpath),
              const SizedBox(height: 11,),
              Text('\$  ${widget.prducte.price}',style: const TextStyle(fontSize: 20),),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: const Text('New',style: TextStyle(fontSize: 15),),
                  ),
                  const SizedBox(width: 8,),

                  const SizedBox(width: 66,),
                  Row(
                    children:[
                      const Icon(Icons.edit_location,
                        size: 20,
                        color: Colors.blueAccent,),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(widget.prducte.location,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
    ],
    ),
              const SizedBox(height: 5,),
              const SizedBox(
                width: double.infinity,
                child: Text('Datiles:',style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 16,),

              Text('The Internet of things will involve a massive build-out of connected devices and sensors woven into the fabric of our lives and businesses.'
                ,style:const TextStyle(fontSize: 18),
                maxLines: isShowmore?   2:null,
                overflow: TextOverflow.fade,
              ) ,
              TextButton(onPressed: (){
                setState(() {
                  isShowmore=!isShowmore;
                });
              }, child:Text(isShowmore? 'Show more':'Show less'))



            ],
        )

    ));
  }
}
