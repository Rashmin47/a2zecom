import 'package:a2zecom/auth/auth_service.dart';
import 'package:a2zecom/pages/dashboard_page.dart';
import 'package:a2zecom/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'A2Z ECOM',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: _router,
    );
  }


  final _router = GoRouter(
    initialLocation: DashboardPage.routeName,
      redirect: (context, state) {
        if (AuthService.currentUser == null){
          return LoginPage.routeName;
        }
        return null;
      } ,
      routes: [
    GoRoute(
      name: DashboardPage.routeName,
      path: DashboardPage.routeName,
      builder: (context,state) => const DashboardPage(),
    ),
    GoRoute(
      name: LoginPage.routeName,
      path: LoginPage.routeName,
      builder: (context,state) => const LoginPage(),
    ),
  ]);
}
