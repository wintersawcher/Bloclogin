
import 'package:flutter/material.dart';
import 'package:flutter_appbloclogin/src/blocs/form_provider.dart';
import 'package:flutter_appbloclogin/src/screens/forgot_password_screen.dart';
import 'package:flutter_appbloclogin/src/screens/home_screen.dart';
import 'package:flutter_appbloclogin/src/screens/login_screen.dart';
import 'package:flutter_appbloclogin/src/screens/signup_screen.dart';

class App extends StatelessWidget {
  // render
  @override
  Widget build(BuildContext context) {
    return FormProvider(
      child: MaterialApp(
        title: 'Login_bloc_screen',
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.light,
        initialRoute: '/login',
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }

  Route onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name == '/login') {
      return MaterialPageRoute(builder: (_) => Login());
    }
    if (routeSettings.name == '/forgot_password') {
      return MaterialPageRoute(builder: (_) => ForgotPassword());
    }
    if (routeSettings.name == '/sign_up') {
      return MaterialPageRoute(builder: (_) => Signup());
    }
    return MaterialPageRoute(builder: (_) => Home());
  }
}
