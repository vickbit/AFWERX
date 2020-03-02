//Product of Michael Vickers

import 'package:flutter/material.dart';
import 'package:michael_vickers_app/contact_card.dart';
import 'package:michael_vickers_app/main.dart';
import 'package:michael_vickers_app/quizAFX/afwerx.dart';
import 'package:michael_vickers_app/todo/todo_main.dart';



class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //  Getting arguments passed in while calling Navigator.pushNamed
    // add in later if needed // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());



/////     /////     /////     /////     /////     /////      Keep bellow in alphabetic order to save time /////     /////     /////     /////     /////     /////
    /////      /////     /////     /////     /////     /////      Main Pages: Below This Line       /////     /////      /////     /////     /////     /////
/////    /////     /////     /////     /////     /////      /////       No Regular Pages                /////     /////      /////     /////     /////     /////




    /////      /////     /////     /////     /////     /////      Main Pages: Above This Line /////     /////      /////     /////     /////     /////
    /////     Keep above in alphabetic     /////     /////     /////      Keep above in alphabetic /////     /////     Keep above in alphabetic     /////     /////
    /////      /////     /////     /////     /////     /////      Regular Pages, Not Main Pages: Below... /////     /////      /////     /////     /////     /////
      case '/MyQuizApp':
      // Did not need validation for counter page / No arg to implement within
        return MaterialPageRoute(builder: (_) => MyQuizApp());

      case '/MyContactApp':
      // Did not need validation for counter page / No arg to implement within
        return MaterialPageRoute(builder: (_) => MyContactApp());

      case '/MyToDoApp':
      // Did not need validation for counter page / No arg to implement within
        return MaterialPageRoute(builder: (_) => MyToDoApp());


/////     /////     /////     /////     /////     /////      Keep above in alphabetic order to save time /////     /////     /////     /////     /////     /////

    // If args is not of the correct type, return an error page.
    // You can also throw an exception while in development.
    // If args is not of the correct type, return an error page.
    // You can also throw an exception while in development.


    //return _errorRoute();
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Under Construction Errors'),
        ),
        body: Center(
          child: Text('Left like this to let you see to add more later when needed!'),
        ),
      );
    });
  }
}
