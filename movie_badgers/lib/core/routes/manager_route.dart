import 'package:flutter/material.dart';
import 'package:moviebadgers/modules/splash/view/page/splash_page.dart';

class ManagerRoute {

  static const SPLASH_PAGE = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {


    switch( settings.name ) {

      case SPLASH_PAGE :
        return MaterialPageRoute(
            builder: (_) => SplashPage()
        );

      default:
        return _errorRoute();
    }

  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
        builder: (_){
          return Scaffold(
            appBar: AppBar(title: Text('Tela não encontrada!'),),
            body: Center(
              child: Text('Tela não encontrada!'),
            ),
          );
        }
    );
  }
}
