import 'package:drop_down_flutter/service/item_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../../model/model.dart';

class SearchInDropDown extends StatefulWidget {
  const SearchInDropDown({Key? key}) : super(key: key);

  @override
  State<SearchInDropDown> createState() => _SearchInDropDownState();
}

class _SearchInDropDownState extends State<SearchInDropDown> {
  TextEditingController _controller = TextEditingController();
  List<String> _items = [];
  var _selectedItem;
  final ItemService _jsonService = ItemService();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() async {
    Item2 data = await _jsonService.loadData();
    setState(() {
      _items = data.items;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Column(
            children: [
              TypeAheadFormField(
                textFieldConfiguration: TextFieldConfiguration(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Select an item',
                  ),
                ),
                suggestionsCallback: (pattern) async {
                  return _items.where((item) => item.toLowerCase().contains(pattern.toLowerCase()));
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                  );
                },
                onSuggestionSelected: (suggestion) {
                  _controller.text = suggestion;
                  _selectedItem = suggestion;
                },
              ),
              SizedBox(height: 16),
              Text('Selected item: $_selectedItem'),
            ],
          )
      ),
    );
  }
}
