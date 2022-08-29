import 'package:bloc_example/settings/cubit/setting_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Toggle Theme'),
          onPressed: () {
            final cubit = context.read<SettingCubit>();
            cubit.toggleTheme();
          },
        ),
      ),
    );
  }
}