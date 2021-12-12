import 'package:counter_app/data/bloc/counter_bloc/counter_bloc.dart';
import 'package:counter_app/data/bloc/post_bloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostPage extends StatelessWidget {
  PostPage({Key? key}) : super(key: key);
  var bloc = PostBloc()..add(PostLoaded());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async{
            bloc.add(PostLoaded());
          },
          child: BlocBuilder<PostBloc, PostState>(
            builder: (context, state) {
              if (state is PostInProgress) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is PostFailure) {
                return const Center(child: Text("Xatolik boldi"));
              }
              if (state is PostSuccess) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(state.postModel[index].body ?? ""),
                    );
                  },
                  itemCount: state.postModel.length,
                );
              }
              return const Center(
                child: Text("Nma gap"),
              );
            },
          ),
        ),
      ),
    );
  }
}



