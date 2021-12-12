import 'package:counter_app/data/bloc/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitPage extends StatelessWidget {
  CounterCubitPage({Key? key}) : super(key: key);
  var cubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, state) => Scaffold(
          body: Center(
            child: Text("${cubit.state}"),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    cubit.increment();
                  },
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    cubit.decrement();
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
