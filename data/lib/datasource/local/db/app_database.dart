import 'package:data/datasource/local/dao/user_dao.dart';
import 'package:data/datasource/local/model/local_user_data.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';

part 'app_database.g.dart';

const _defaultVersion = 1;

@Database(version: _defaultVersion, entities: [LocalUserData])
abstract class AppDatabase extends FloorDatabase {
  UserDao get userDao;
}
