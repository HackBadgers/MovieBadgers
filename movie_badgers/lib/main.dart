import 'package:flutter/material.dart';
import 'package:moviebadgers/core/routes/manager_route.dart';
import 'package:moviebadgers/modules/splash/view/page/splash_page.dart';
import 'package:moviebadgers/core/dependency_injection/injection_container.dart' as dependency_injection;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependency_injection.init();
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
      initialRoute: ManagerRoute.SPLASH_PAGE,
      onGenerateRoute: ManagerRoute.generateRoute,
      home: SplashPage(),
    );
  }
}