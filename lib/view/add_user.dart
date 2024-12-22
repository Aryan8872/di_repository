import 'package:di_repository/di/di.dart';
import 'package:di_repository/model/user.dart';
import 'package:di_repository/repository/user_repository.dart';

void main(){
  initModule();
  User user = User(id: 400, fname: "username", age: 40);
  UserRepository userRepository= getIt<UserRepository>();

  userRepository.addUser(user);

  print(userRepository.getAllUser());

}