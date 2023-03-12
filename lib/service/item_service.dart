import 'dart:convert';

import 'package:flutter/services.dart';
import '../model/model.dart';

class ItemService{

  Future<List<Item>> loadItemFromJson()async{
  final jsonStr = await rootBundle.loadString('assets/json/item.json');
  final List<dynamic> jsonItm= jsonDecode(jsonStr);
  return jsonItm.map((val) => Item.fromJson(val as Map<String,dynamic>)).toList();
  }

  Future<Item2> loadData() async {
    String jsonString = await rootBundle.loadString('assets/json/item2.json');
    final json = jsonDecode(jsonString);
    return Item2.fromJson(json);
  }
}