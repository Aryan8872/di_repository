import 'package:di_repository/data_source/local/local_data_source.dart';
import 'package:di_repository/data_source/remote/remote_data_source.dart';
import 'package:di_repository/repository/user_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;


void initModule(){
  getIt.registerLazySingleton<RemoteDataSource>(()=>RemoteDataSource() );
  getIt.registerLazySingleton<LocalDataSource>(()=>LocalDataSource() );

  getIt.registerLazySingleton<UserRepository>(() => UserRepository(localData: getIt(), remoteData: getIt()));


}