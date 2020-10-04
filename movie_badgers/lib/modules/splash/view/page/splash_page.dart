import 'package:flutter/material.dart';
import 'package:moviebadgers/core/routes/manager_route.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () => Navigator.pushNamed(context, ManagerRoute.MOVIE_LIST_PAGE));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('MOVIE BADGERS', style: TextStyle(color: Colors.white, fontSize: 32, ),),
      ),
    );
  }
}
