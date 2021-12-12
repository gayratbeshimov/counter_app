import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:counter_app/data/model/post_model.dart';
import 'package:counter_app/data/service/post_service.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';

part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    PostService postService = PostService();
    on<PostLoaded>((event, emit) async {
      emit(PostInProgress());
      try {
        var list = await postService.getPosts();
        emit(PostSuccess(postModel: list));
      } catch (e) {
        emit(PostFailure());
      }
    });
  }
}
