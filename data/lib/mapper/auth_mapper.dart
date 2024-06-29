import 'package:domain/domain.dart';

import '../datasource/remote/dto/account/api_current_auth_user_response_data.dart';

abstract class AuthMapper {
  static UserInfoEntity mapToUserInfo(ApiCurrentAuthUserResponseData? data) {
    return UserInfoEntity(
      id: data?.id ?? idEmpty,
      username: data?.username ?? "",
      email: data?.email ?? "",
      firstName: data?.firstName ?? "",
      lastName: data?.lastName ?? "",
      gender: Gender.fromString(data?.gender),
      image: data?.image ?? "",
    );
  }
}
