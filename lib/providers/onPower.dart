import 'package:flutter/material.dart';

class OnPower extends ChangeNotifier {
  bool _powerBtn = false;
  bool get powerBtn => _powerBtn;

  int _hr = 0;
  int get hr => _hr;
  int _min = 0;
  int get min => _min;
  int _sec = 0;
  int get sec => _sec;

  void vpnTimer() {
    if (_powerBtn) {
      _sec++;
      if (_sec == 60) {
        _min++;
        _sec = 0;
      }
      if (_min == 60) {
        _min = 0;
        _sec = 0;
        _hr++;
      }
    } else {
      _hr = 0;
      _min = 0;
      _sec = 0;
    }
    notifyListeners();
  }

  void pressPower() {
    if (_powerBtn) {
      _powerBtn = false;
    } else {
      _powerBtn = true;
    }
    notifyListeners();
  }
}
