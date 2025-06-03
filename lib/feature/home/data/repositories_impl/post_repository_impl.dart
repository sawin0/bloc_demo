import 'package:demo/core/constants/endpoints.dart';
import 'package:dio/dio.dart';

import '../../domain/entities/post.dart';
import '../../domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final Dio dio;

  PostRepositoryImpl(this.dio);

  @override
  Future<List<Post>> getPosts() async {
    final response = await dio.get(Endpoints.baseUrl);
    return (response.data as List).map((json) {
      return Post(id: json['id'], title: json['title'], body: json['body']);
    }).toList();
  }
}
