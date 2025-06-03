import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../feature/home/data/repositories_impl/post_repository_impl.dart';
import '../../feature/home/domain/repositories/post_repository.dart';
import '../../feature/home/domain/usecases/get_posts.dart';
import '../../feature/home/presentation/bloc/post_bloc.dart';

final sl = GetIt.instance;

void init() {
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<PostRepository>(() => PostRepositoryImpl(sl<Dio>()));
  sl.registerLazySingleton<GetPosts>(() => GetPosts(sl<PostRepository>()));
  sl.registerFactory<PostBloc>(() => PostBloc(sl<GetPosts>()));
}
