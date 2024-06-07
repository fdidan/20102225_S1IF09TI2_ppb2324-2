import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:praktikum6/repositories/auth_repo.dart';

part 'logins_state.dart';


class LoginCubit extends Cubit<LoginState>{
  LoginCubit(): super(LoginInitial());
  final _repo = AuthRepo();

  void login({required String email, required String password}) async {
    emit(LoginLoading());

    try{
      await _repo.login(email: email, password: password);
      emit(LoginSuccess('Login berhasil!'));
    }catch (e){
      print(e);
      emit(LoginFailure(e.toString()));
    }
  }
}