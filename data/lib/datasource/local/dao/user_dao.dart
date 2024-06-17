import 'package:data/datasource/local/model/local_user_data.dart';
import 'package:domain/domain.dart';
import 'package:floor/floor.dart';

@dao
abstract class UserDao {
  @Query('SELECT * FROM ${DaoConstant.userTableName} WHERE id = :id')
  Stream<LocalUserData?> findTaskById(int id);
}
