class Item{
  String imgpath;
  double price;
  String location;
  String name;
  Item({required this.imgpath,required this.name,required this.price,this.location='main branch'});
}
List products=[
  Item(name:'proudect1',imgpath: 'images/flower.jpg', price:50.5,location:'Samar Shop') ,
  Item(name:'proudect2',imgpath: 'images/fl2.jpg', price:99.9,location:'Samar Shop'),
  Item(name:'proudect3',imgpath: 'images/fl3.jpg', price:66.99,location:'Samar Shop'),
  Item(name:'proudect4',imgpath: 'images/fl5.jpg', price:30.55,location:'Samar Shop'),
  Item(name:'proudect5',imgpath: 'images/fl6.jpg', price:140.8,location:'Samar Shop'),
  Item(name:'proudect6',imgpath: 'images/fl7.jpg', price:180.99,location:'Samar Shop'),
  Item(name:'proudect7',imgpath: 'images/fl8.jpg', price:250.65,location:'Samar Shop'),
  Item(name:'proudect8',imgpath: 'images/fl9.jpg', price:190.70,location:'Samar Shop'),
  Item(name:'proudect9',imgpath: 'images/fl10.jpg', price:90.95,location:'Samar Shop'),
  Item(name:'proudect10',imgpath: 'images/fl11.jpg', price:70.80,location:'Samar Shop'),

];
