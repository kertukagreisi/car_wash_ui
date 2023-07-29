import 'package:flutter/cupertino.dart';

extension NavigationExtension on BuildContext {
  void goNamedRoute(String routeName) {
    Navigator.pushNamed(this, routeName);
  }
}
