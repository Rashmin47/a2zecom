import 'package:a2zecom/pages/add_telescope_page.dart';
import 'package:a2zecom/pages/brand_page.dart';
import 'package:a2zecom/pages/view_telescope_page.dart';
import 'package:flutter/material.dart';

class DashboardModel {
  final String title;
  final IconData iconData;
  final String routeName;

  const DashboardModel({required this.title, required this.iconData, required this.routeName});
}


const List<DashboardModel> dashboardModelList = [
  DashboardModel(title: 'Add Telescope', iconData: Icons.add, routeName: AddTelescopePage.routeName),
  DashboardModel(title: 'View Telescope', iconData: Icons.inventory, routeName: ViewTelescopePage.routeName),
  DashboardModel(title: 'Brands', iconData: Icons.category, routeName: BrandPage.routeName),
];