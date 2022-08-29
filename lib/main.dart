import 'package:bloc_example/home/cubit/counter_cubit.dart';
import 'package:bloc_example/home/views/home_page.dart';
import 'package:bloc_example/settings/cubit/setting_cubit.dart';
import 'package:bloc_example/settings/cubit/setting_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => SettingCubit()),
      ],
      child: BlocBuilder<SettingCubit, SettingState>(
        builder: (context, state) {
          return  MaterialApp(
            theme: state.theme,
            home:  const HomePage(),
          );
        }
      ),
    );
  }
}
