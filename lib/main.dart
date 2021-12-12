import 'package:counter_app/ui/pages/counter_cubit_page/counter_cubit_page.dart';
import 'package:counter_app/ui/pages/post_page/post_page.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'data/bloc/counter_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(MaterialApp(
      /// pagelarni ozgartirib ishlayverasz
      home: PostPage(),
    )),
    blocObserver: CounterObserver(),
  );
}
