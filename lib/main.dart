import 'package:car_wash_ui/page/home/home_page.dart';
import 'package:car_wash_ui/page/home/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'navigation/nav_route.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NavRoute.homeScreen,
      routes: {
        NavRoute.homeScreen: (context) => ChangeNotifierProvider<HomeViewModel>(
              create: (_) => HomeViewModel(),
              child: const HomePage(),
            ),
      },
    );
  }
}

void setupLocator() {
  GetIt.instance.registerLazySingleton(() => HomeViewModel());
}
