import 'package:flutter/material.dart';
import 'package:untitled1/Shard/App_Bar.dart';
import 'package:untitled1/model_Iteam/Iteams.dart';

class Details extends StatefulWidget {
  Item prducte;
  Details({super.key, required this.prducte});

  @override
  State<Details> createState() => _DeatilesState();
}

class _DeatilesState extends State<Details> {
  //const Details ({Key? key}) : super(key: key);
  bool isShowmore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[800],
          title: const Text('Deatiles Screan'),
          actions: const [ProductsandPrice()],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(widget.prducte.imgpath),
            const SizedBox(
              height: 10,
            ),

            Text(
              '\$ ${widget.prducte.price}',
              style: const TextStyle(color: Colors.blue,fontSize: 18),
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                'Datiles:',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              widget.prducte.descrap,
              style: const TextStyle(fontSize: 18),
              maxLines: isShowmore ? 2 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isShowmore = !isShowmore;
                  });
                },
                child: Text(isShowmore ? 'Show more' : 'Show less')),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: [
                ListTile(
                  title: Text(' ${widget.prducte.hours}'),
                  leading: const Icon(Icons.access_time, size: 26),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(' ${widget.prducte.article}'),
                  leading: const Icon(Icons.article, size: 26),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('${widget.prducte.Code}'),
                  leading: const Icon(Icons.code, size: 26),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('${widget.prducte.Time}'),
                  leading: const Icon(Icons.timelapse_outlined, size: 26),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('${widget.prducte.mobile}'),
                  leading: const Icon(Icons.mobile_friendly, size: 26),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('${widget.prducte.certifica}'),
                  leading: const Icon(Icons.brightness_medium_outlined, size: 26),
                  onTap: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(4)),
                  child: const Text(
                    'New',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.amberAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 66,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.edit_location,
                      size: 20,
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      widget.prducte.location,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )));
  }
}
