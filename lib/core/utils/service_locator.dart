import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/Search/repos/search_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator () {  
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(ApiService(Dio()))
  );
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(ApiService(Dio()))
  );

}