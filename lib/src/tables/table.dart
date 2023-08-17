import 'package:hive/hive.dart';

class Table {

  Future<Box<dynamic>> createTable(String tableName, {String? path}) {
    return Hive.openBox(tableName, path: path);
  }

  Future<void> delete() {
    return Hive.deleteFromDisk();
  }

  Future<void> deleteTableFromDisk(String tableName, {String? path}) {
    return Hive.deleteBoxFromDisk(tableName, path: path);
  }

  Future<bool> doTableExists(String tableName, {String? path}) =>
      Hive.boxExists(tableName, path: path);

  Box<dynamic> getTable(String tableName) => Hive.box(tableName);

  Future<bool> isTableCreated(String tableName, {String? path}) =>
      Hive.boxExists(tableName, path: path);

}