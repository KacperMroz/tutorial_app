import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_project/utils/bloc_utils.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  //TODO implement login logic
}

class LoginState {
  //TODO think what you need in state, try to add it.
  LoginState({
    this.status = BlocStatus.initial,
  });

  final BlocStatus status;
}