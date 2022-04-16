import 'package:alice_care_admin/Views/Complaints/complaint_view.dart';
import 'package:alice_care_admin/Views/Doctors/doctors_view.dart';
import 'package:alice_care_admin/Views/Home/home_view.dart';
import 'package:alice_care_admin/Views/Pharmacies/pharmacies_view.dart';
import 'package:alice_care_admin/Views/Services/services_view.dart';
import 'package:alice_care_admin/Views/Users/users_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  selecetedPage(pageRoute) {
    switch (pageRoute) {
      case "Home":
        return HomeView();

      case "Users":
        return const UsersView();

      case "Complaince":
        return const ComplainceView();

      case "Doctors":
        return const DoctorsView();
      case "Pharmacies":
        return const PharmacyStoreView();
      case "Ambulance":
        return const ServicesView();

      default:
    }
  }
}
