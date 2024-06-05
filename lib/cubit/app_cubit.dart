import 'dart:async';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit()
      : super(
          AppState(
              selectedNavBarIndex: 0,
              genratedRandomInt: 40,
              selectedBannerIndex: 0),
        );

  void genrateRandomInt() {
    Timer.periodic(const Duration(milliseconds: 500), (Timer t) {
      emit(
        state.copyWith(genratedRandomInt: Random().nextInt(500) + 30),
      );
    });
  }

  void setSelectedNavBarIndex(int index) {
    emit(state.copyWith(selectedNavBarIndex: index));
    print("data is ${state.selectedNavBarIndex}  , $index");
  }

  void setSelectedBannerIndex(int index) {
    emit(
      state.copyWith(selectedBannerIndex: index),
    );
  }
}
