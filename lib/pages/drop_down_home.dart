import 'package:flutter/material.dart';

class DropDownHome extends StatefulWidget {
  const DropDownHome({Key? key}) : super(key: key);

  @override
  State<DropDownHome> createState() => _DropDownHomeState();
}

class _DropDownHomeState extends State<DropDownHome> {
  final items=[
    'Red',
    'Green',
    'Blue',
    'Orange'
  ];
  String dropdownValue='Red';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          onChanged:(String? newVal){
            setState(() {
              dropdownValue=newVal!;
            });
          },
            value:dropdownValue,
            items:items.map<DropdownMenuItem<String>>(
                    (String val){
                      return DropdownMenuItem<String>(
                        value:val,
                        child:Text(val),);
            }).toList(),),
    ));
  }
}
