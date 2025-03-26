import '../../domain/entities/user.dart';
import '../../domain/repositories/i_auth_repo.dart';
import '../datasources/i_local_auth_source.dart';

class AuthRepo implements IAuthRepo {
  final ILocalAuthSource localAuthSource;

  AuthRepo(this.localAuthSource);

  @override
  Future<User> getUserFromEmail(email) async {
    //TODO: implement getUserFromEmail
    return await localAuthSource.getUserFromEmail(email);
  }

  @override
  Future<void> logout() async {
    //TODO: implement logout
    return await localAuthSource.logout();
  }

  @override
  Future<void> signup(email, password) async {
    //TODO: implement signup
    return await localAuthSource.signup(email, password);
  }

  @override
  Future<String> getLoggedUser() async {
    //TODO: implement getLoggedUser
    return await localAuthSource.getLoggedUser();
  }

  @override
  Future<bool> isLogged() async {
    //TODO: implement isLogged
    return await localAuthSource.isLogged();
  }

  @override
  Future<void> setLoggedIn() async {
    //TODO: implement setLoggedIn
    return await localAuthSource.setLoggedIn();
  }
}
