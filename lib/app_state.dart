import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _menuEspandido = true;
  bool get menuEspandido => _menuEspandido;
  set menuEspandido(bool value) {
    _menuEspandido = value;
  }

  String _pageNavigate = 'Dashboard';
  String get pageNavigate => _pageNavigate;
  set pageNavigate(String value) {
    _pageNavigate = value;
  }
}
