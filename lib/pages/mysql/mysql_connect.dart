import 'package:mysql1/mysql1.dart';

class MysqlConnect {
  // static String host = 'localhost',
  static String host = '10.0.2.2',
      user = 'root',
      password = 'password',
      db = 'mydb';
  static int port = 3305;

  MysqlConnect();

  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
        host: host, user: user, password: password, port: port, db: db);
    return await MySqlConnection.connect(settings);
  }
}
