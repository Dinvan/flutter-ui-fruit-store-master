import 'package:flutter/material.dart';
import 'package:fruit_store/_routing/routes.dart';
import 'package:fruit_store/views/cart.dart';
import 'package:fruit_store/views/details.dart';
import 'package:fruit_store/views/home.dart';
import 'package:fruit_store/views/login.dart';
import 'package:fruit_store/views/register.dart';
import 'package:fruit_store/views/reset_password.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case loginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
      break;
    case registerViewRoute:
        return MaterialPageRoute(builder: (context) => RegisterPage());
        break;
    case resetPasswordViewRoute:
      return MaterialPageRoute(builder: (context) => ResetPasswordPage());
      break;
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => FruitAppHomePage());
      break;
    case detailsViewRoute:
      return MaterialPageRoute(
        builder: (context) => FruitAppFruitDetails(fruit: settings.arguments),
      );
    case cartViewRoute:
      return MaterialPageRoute(builder: (context) => FruitAppCartView());
      break;
    default:
      return MaterialPageRoute(builder: (context) => FruitAppHomePage());
  }
}
