import 'package:flutter/material.dart';
import 'package:untitled1/model_Iteam/Iteams.dart';

class Cart with ChangeNotifier{
  List SelectedProducts=[];
  int price=0;
  add(Item product){
    SelectedProducts.add(product);
    price+=product.price.round();
    notifyListeners();

  }

}