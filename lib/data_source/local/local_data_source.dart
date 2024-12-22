import 'package:di_repository/model/user.dart';

class LocalDataSource{

  List <User> lstUsers = [
    User(id: 2, fname: "hari", age: 21),
    User(id: 3, fname: "salman", age: 30),
    User(id: 4, fname: "khan", age: 100),

  ];


  bool addUser(User user){
    lstUsers.add(user);
    return true;
  }

  List <User> getAllUser(){
    return lstUsers;
  }



}