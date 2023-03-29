import 'package:flutter/material.dart';

enum States { initial, loading, failed, succeeded }

class LoginStates extends ChangeNotifier {
  LoginStates._privateConstructor();
  static final LoginStates _instance = LoginStates._privateConstructor();
  factory LoginStates() {
    return _instance;
  }

  States state = States.initial;

  login(String username, String password) async {
    state = States.loading;
    notifyListeners();

    Future.delayed(const Duration(seconds: 1), () {
      state = States.succeeded;
      notifyListeners();
    });
  }
}
