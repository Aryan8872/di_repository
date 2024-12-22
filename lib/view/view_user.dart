import 'package:di_repository/data_source/local/local_data_source.dart';
import 'package:di_repository/data_source/remote/remote_data_source.dart';
import 'package:di_repository/di/di.dart';
import 'package:di_repository/model/user.dart';
import 'package:di_repository/repository/user_repository.dart';

void main(){
  initModule(); 
  UserRepository userRepository = getIt<UserRepository>();
  List<User> lstUser = userRepository.getAllUser();
  print(lstUser);
  
}