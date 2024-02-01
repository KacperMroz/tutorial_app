import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tutorial_project/utils/bloc_utils.dart';

part 'bloc_test_cubit.freezed.dart';

@injectable
class BlocTestCubit extends Cubit<BlocTestState> {
  BlocTestCubit() : super(BlocTestState.initial());

  Future<void> onIncrementPressed() async {
    emit(state.copyWith(status: BlocStatus.loading));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(status: BlocStatus.success, value: state.value! + 1));
  }

  Future<void> onDecrementPressed() async {
    emit(state.copyWith(status: BlocStatus.loading));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(status: BlocStatus.success, value: state.value! - 1));
  }
}

@freezed
class BlocTestState with _$BlocTestState {
  const factory BlocTestState({
    BlocStatus? status,
    double? value,
  }) = _BlocTestState;

  factory BlocTestState.initial() => const BlocTestState(
        status: BlocStatus.initial,
        value: 0,
      );
}
