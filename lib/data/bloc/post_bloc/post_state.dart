part of 'post_bloc.dart';

@immutable
abstract class PostState extends Equatable {}

class PostInitial extends PostState {
  @override
  List<Object?> get props => [];
}

class PostInProgress extends PostState {
  @override
  List<Object?> get props => [];
}

class PostFailure extends PostState {
  @override
  List<Object?> get props => [];
}

class PostSuccess extends PostState {
  final List<PostModel> postModel;

  PostSuccess({
    required this.postModel,
  });

  @override
  List<Object?> get props => [postModel];
}
