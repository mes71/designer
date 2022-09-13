import 'package:flutter/material.dart';

class SidebarItemModel {
  final String title;
  final LinearGradient gradient;
  final Icon icon;

  SidebarItemModel(
      {required this.title, required this.gradient, required this.icon});
}

List<SidebarItemModel> sideBarItems = [
  SidebarItemModel(
      title: 'Home',
      gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF00AEFF),
            Color(0xFF0076FF),
          ]),
      icon: const Icon(
        Icons.home,
        color: Colors.white,
      )),
  SidebarItemModel(
      title: 'Courses',
      gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFA7d75),
            Color(0xFFC23D61),
          ]),
      icon: const Icon(
        Icons.library_books,
        color: Colors.white,
      )),
  SidebarItemModel(
      title: 'Billing',
      gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFA7d75),
            Color(0xFFC23D61),
          ]),
      icon: const Icon(
        Icons.library_books,
        color: Colors.white,
      )),
  SidebarItemModel(
      title: 'Billing',
      gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFAD64A),
            Color(0xFFEA880F),
          ]),
      icon: const Icon(
        Icons.credit_card,
        color: Colors.white,
      )),
  SidebarItemModel(
      title: 'Setting',
      gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF4E62CC),
            Color(0xFF202A78),
          ]),
      icon: const Icon(
        Icons.settings,
        color: Colors.white,
      )),
];
