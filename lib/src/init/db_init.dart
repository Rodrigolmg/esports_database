import 'package:hive_flutter/adapters.dart';

class DbInit {

  Future<void> appDbInit([String? subDir]) {
    return Hive.initFlutter(subDir);
  }

  void dbInit(String path) {
    Hive.init(path);
  }

}