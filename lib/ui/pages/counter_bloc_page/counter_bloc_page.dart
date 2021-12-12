import 'package:counter_app/data/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  CounterBlocPage({Key? key}) : super(key: key);
  var bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: BlocBuilder<CounterBloc, int>(
        builder: (context, state) => Scaffold(
          body: Center(
            child: Text("${bloc.state}"),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    bloc.add(CounterIncrement());
                  },
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    bloc.add(CounterDecrement());
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
