import 'package:car_wash_ui/navigation/nav_extensions.dart';
import 'package:flutter/material.dart';

import '../../navigation/nav_route.dart';
import '../../resources/app_colors.dart';
import '../../resources/dimens.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 3),
              const Text(
                '404',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 300.0,
                ),
              ),
              const Spacer(),
              Text(
                'Page not found',
                style: Dimens.titleTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                'The page you are looking for is not available!',
                style: Dimens.mediumTextStyle.copyWith(
                  color: AppColors.gray,
                ),
              ),
              const Spacer(flex: 2),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextButton.icon(
                  onPressed: () => context.goNamedRoute(NavRoute.home),
                  icon: const Icon(Icons.arrow_back),
                  label: Text(
                    'GO TO HOME',
                    style: Dimens.titleTextStyle.copyWith(color: AppColors.darkBlue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Spacer(flex: 3),
            ],
          ),
        ),
      );
}
