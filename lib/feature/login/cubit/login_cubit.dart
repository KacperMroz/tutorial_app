import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tutorial_project/modules/domain/user/model/user.dart';
import 'package:tutorial_project/utils/bloc_utils.dart';

part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.initial());

  Future<void> onNameChanged(String value) async {
    emit(state.copyWith(user: state.user!.copyWith(name: value)));
    print(state.user!.name);
  }

  Future<void> onPasswordChange(String value) async {
    emit(state.copyWith(user: state.user!.copyWith(password: value)));
    print(state.user!.password);
  }
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    BlocStatus? status,
    User? user,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        status: BlocStatus.initial,
        user: User(),
      );
}
