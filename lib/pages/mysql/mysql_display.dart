import 'package:drop_down_flutter/pages/mysql/mysql_connect.dart';
import 'package:flutter/material.dart';
class MysqlDisplay extends StatefulWidget {
  const MysqlDisplay({Key? key}) : super(key: key);

  @override
  State<MysqlDisplay> createState() => _MysqlDisplayState();
}

class _MysqlDisplayState extends State<MysqlDisplay> {
  var mail='';
  var db=MysqlConnect();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data comming from Mysql"),
      ),
      body: Center(
       child: Column(
         children: [
           Text("mail:$mail"),
           FloatingActionButton(onPressed: _getConnectionData,
           tooltip: 'data',
           child: Icon(Icons.mail),)
         ],
       ),
      ),
    );
  }

  void _getConnectionData() {
    db.getConnection().then((conn) {
      String sql='SELECT email FROM mydb.user WHERE id=1;';
      conn.query(sql).then((results) {
       for(var row in results){
         setState(() {
           mail=row[0];
         });
       }
      });
    });
  }
}
