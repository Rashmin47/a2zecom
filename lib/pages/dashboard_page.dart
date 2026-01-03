import 'package:a2zecom/auth/auth_service.dart';
import 'package:a2zecom/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/';
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(onPressed: () {
            AuthService.logout().then((value) => context.goNamed(LoginPage.routeName));
          }, icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text('Dashboard Page')
        ,
      ),
    );
  }
}
