import 'package:flutter/material.dart';
import 'package:moviebadgers/core/routes/manager_route.dart';
import 'package:moviebadgers/modules/splash/view/page/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Badgers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: ManagerRoute.splashPage,
      onGenerateRoute: ManagerRoute.generateRoute,
      home: SplashPage(),
    );
  }
}