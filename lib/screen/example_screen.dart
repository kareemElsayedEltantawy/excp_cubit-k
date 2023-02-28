import 'package:cubit_app/generic_cubit/generic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'example_view_model.dart';

class ExampleScreen extends StatelessWidget {

  ExampleViewModel exampleViewModel = ExampleViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {
              exampleViewModel.plusMyCounter();
            }, icon: Icon(Icons.add, color: Colors.red,)),
            BlocConsumer<GenericCubit<int>, GenericState<int>>(
              bloc: exampleViewModel.counter,
              listener: (context, state) {},
              builder: (context, state) {
                return Text('${state.data}');
              },
            ),
            IconButton(onPressed: () {
              exampleViewModel.minusMyCounter();
            }, icon: Icon(Icons.remove, color: Colors.red,)),
          ],
        ),
      ),
    );
  }
}
