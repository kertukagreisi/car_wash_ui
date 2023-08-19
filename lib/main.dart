import 'package:car_wash_ui/navigation/nav_controller.dart';
import 'package:car_wash_ui/resources/app_colors.dart';
import 'package:car_wash_ui/resources/dimens.dart';
import 'package:car_wash_ui/shared/extensions.dart';
import 'package:car_wash_ui/shared/globals.dart';
import 'package:car_wash_ui/shared/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logging/logging.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await dotenv.load();
  setupLogger();
  setupLocator();
  runApp(CarWashApp());
}

class CarWashApp extends StatelessWidget {
  CarWashApp({super.key});

  final NavController _navController = getIt.get<NavController>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _navController.router,
      title: 'Car Wash',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: Globals.snackBarKey,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: AppColors.darkBlue.toMaterialColor(),
        primaryColor: AppColors.darkBlue,
        shadowColor: AppColors.gray,
        hoverColor: AppColors.lightBlue,
        snackBarTheme:
            SnackBarThemeData(backgroundColor: AppColors.lightGray, contentTextStyle: Dimens.smallTextStyle.copyWith(color: AppColors.green)),
      ),
    );
  }
}

void setupLogger() {
  Logger.root.level = Level.FINE;
  Logger.root.onRecord.listen((record) => debugPrint('${record.loggerName} ${record.level.name} ${record.time} ${record.message}'));
}
