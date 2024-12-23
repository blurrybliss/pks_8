import 'package:flutter/material.dart';
import 'package:practice_4/pages/profile_manager.dart';

class ProfileOperations {
  final ProfileManager profileManager;

  ProfileOperations(this.profileManager);

  void saveProfile(BuildContext context, String name, String email, String phone) {
    profileManager.updateProfile(name, email, phone);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Профиль обновлен')),
    );
    Navigator.pop(context);
  }
}
