import 'package:flutter/material.dart';

class ProfileManager with ChangeNotifier {
  String _name = 'Иван Иванов';
  String _email = 'ivan.ivanov@example.com';
  String _phone = '+7 123 456 7890';

  String get name => _name;
  String get email => _email;
  String get phone => _phone;

  void updateProfile(String name, String email, String phone) {
    _name = name;
    _email = email;
    _phone = phone;
    notifyListeners();
  }
}
