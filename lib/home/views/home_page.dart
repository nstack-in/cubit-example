import 'package:bloc_example/home/cubit/counter_cubit.dart';
import 'package:bloc_example/home/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit Example'),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return   Center(
            child: Text(
              '${state.count}',
              style: Theme.of(context).textTheme.headline3,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: (){
          final cubit = context.read<CounterCubit>();
          cubit.increment();
        },
      ),
    );
  }
}