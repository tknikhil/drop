import 'package:drop_down_flutter/pages/drop_down/drop_down.dart';
import 'package:drop_down_flutter/pages/drop_down/search_in_dropdown.dart';
import 'package:flutter/material.dart';

class DropDownCaller extends StatefulWidget {
  const DropDownCaller({Key? key}) : super(key: key);

  @override
  State<DropDownCaller> createState() => _DropDownCallerState();
}

class _DropDownCallerState extends State<DropDownCaller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown Caller",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height/4,
                child: DropDownHome()),
            SizedBox(
                height: MediaQuery.of(context).size.height/4,
                child: SearchableDropDown()),
            SizedBox(
                height: MediaQuery.of(context).size.height/4,
                child: SearchInDropDown())
          ],
        ),
      ),
    );
  }
}
