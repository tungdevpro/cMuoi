import 'package:data/datasource/local/model/local_user_data.dart';
import 'package:floor/floor.dart';

@dao
abstract class UserDao {
  @Query('SELECT * FROM User')
  Future<List<LocalUserData>> findAllUser();

  @Query('SELECT name FROM User')
  Stream<List<String>> findAllUserName();

  @Query('SELECT * FROM User WHERE id = :id')
  Stream<LocalUserData?> findUserById(int id);

  @Insert()
  Future<int> insert(LocalUserData data);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> update(LocalUserData data);

  @delete
  Future<void> deletePerson(LocalUserData data);
}
