import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:home_body/core/networking/api_service.dart';
import 'package:home_body/features/home/data/repos/tags/tags_repo_imp.dart';
import 'package:home_body/features/login/data/repos/login_repo_imp.dart';
import 'package:home_body/features/profile/data/repos/get_profile_repo_imp.dart';
import 'package:home_body/features/register/data/repos/register_repo_imp.dart';

import '../../features/login/data/repos/add_profile_repo_imp.dart';
import '../../features/recommended_coaches/data/repos/get_trainers_repo_imp.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  // Register Dio
  Dio dio = ApiService.createDio();
  getIt.registerLazySingleton<Dio>(() => dio);

  // Api Service
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));

  // Login
  getIt.registerLazySingleton<LoginRepoImp>(
      () => LoginRepoImp(getIt<ApiService>()));

  // Register
  getIt.registerLazySingleton<RegisterRepoImp>(
      () => RegisterRepoImp(getIt<ApiService>()));

  // Get Trainers
  getIt.registerLazySingleton<GetTrainersRepoImp>(
      () => GetTrainersRepoImp(getIt<ApiService>()));

  // Get Tags
  getIt.registerLazySingleton<TagsRepoImp>(
      () => TagsRepoImp(getIt<ApiService>()));

  // Get Profile
  getIt.registerLazySingleton<GetProfileRepoImp>(
      () => GetProfileRepoImp(getIt<ApiService>()));

  // Add Profile
  getIt.registerLazySingleton<AddProfileRepoImp>(
      () => AddProfileRepoImp(getIt<ApiService>()));
}
