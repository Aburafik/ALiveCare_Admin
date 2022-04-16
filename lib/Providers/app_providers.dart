import 'package:alice_care_admin/Views/Complaints/complaint_view.dart';
import 'package:alice_care_admin/Views/Doctors/doctors_view.dart';
import 'package:alice_care_admin/Views/Home/home_view.dart';
import 'package:alice_care_admin/Views/Users/users_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String _currentRoute = "Home";

 get currentRoute => _currentRoute;

  getCurrentRoute(String route) {
    _currentRoute = route;
    notifyListeners();
  }
}
