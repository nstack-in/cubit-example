import 'package:bloc_example/settings/cubit/setting_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingCubit extends Cubit<SettingState>{
  SettingCubit(): super(SettingState(theme: ThemeData.light()));

  void toggleTheme(){
    if(state.theme == ThemeData.light()){
      final updateState = SettingState(theme: ThemeData.dark());
      emit(updateState);
    }else{
      final updateState = SettingState(theme: ThemeData.light());
      emit(updateState);
    }
  }
}