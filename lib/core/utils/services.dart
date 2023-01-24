import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:good_book/core/utils/api.dart';
import 'package:good_book/features/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Api>(
    Api(Dio()),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<Api>()),
  );
}
