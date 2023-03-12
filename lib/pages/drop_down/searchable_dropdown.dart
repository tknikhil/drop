import 'package:drop_down_flutter/service/item_service.dart';
import 'package:flutter/material.dart';

import '../../model/item.dart';

class SearchableDropDown extends StatefulWidget {
  const SearchableDropDown({Key? key}) : super(key: key);

  @override
  State<SearchableDropDown> createState() => _SearchableDropDownState();
}

class _SearchableDropDownState extends State<SearchableDropDown> {
  var _selectedItem;
  List<Item> _items=[];

  @override
  void initState() {
    super.initState();
    ItemService().loadItemFromJson().then((value){
      setState(() {
        _items=value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: DropdownButton<Item>(
          isExpanded: true,
          value: _selectedItem,
          items: _items.map((val_item){
            return DropdownMenuItem<Item>(
              value: val_item,
              child: Text(val_item.name),
            );
          }).toList(),
          onChanged: (item){
            setState(() {
              _selectedItem=item;
            });
          },
        ),
      ),

    );
  }
}
