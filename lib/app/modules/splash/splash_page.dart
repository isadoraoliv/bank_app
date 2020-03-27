import 'package:bank_app/app/modules/home/home_module.dart';
import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:splashscreen/splashscreen.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SplashScreen(
            backgroundColor: AppColors.blue,
            seconds: 10,
            navigateAfterSeconds: HomeModule(),
            loaderColor: Colors.transparent,
          ),
          Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesome.bank,
                    color: AppColors.white,
                    size: AppDimensions.iconLargest,
                  ),
                  SizedBox(
                    height: AppDimensions.largest,
                  ),
                  Text(
                    "Welcome to",
                    style: TextStyle(
                      color: AppColors.whiteDark,
                      fontSize: AppDimensions.large,
                    ),
                  ),
                  SizedBox(
                    height: AppDimensions.small,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "TK",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: AppDimensions.largest,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "bank",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: AppDimensions.largest,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: AppDimensions.largest,
                      ),
                      child: Text(
                        "100% Safe & Secure",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: AppDimensions.textSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
