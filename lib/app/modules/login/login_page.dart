import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(
              left: AppDimensions.large,
              top: AppDimensions.margin,
              right: AppDimensions.large,
            ),
            color: AppColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppDimensions.small,
                    bottom: AppDimensions.largest,
                  ),
                  child: Icon(
                    FontAwesome.bank,
                    color: AppColors.blue,
                    size: AppDimensions.iconLargest,
                  ),
                ),
                SizedBox(
                  height: AppDimensions.largest,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: AppDimensions.textMedium,
                  ),
                ),
                SizedBox(
                  height: AppDimensions.small,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: AppDimensions.smallest),
                  child: Text(
                    "Isadora Oliveira!",
                    style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: AppDimensions.textLargest,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.largest,
                ),
                Text(
                  "Login your TKbank user ID.",
                  style: TextStyle(
                    color: AppColors.grayLight,
                    fontWeight: FontWeight.w300,
                    fontSize: AppDimensions.textMedium,
                  ),
                ),
                SizedBox(
                  height: AppDimensions.largest,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColors.yellow,
                      ),
                    ),
                    hintText: "Enter User ID",
                    hintStyle: TextStyle(
                      color: AppColors.grayLight,
                      fontSize: AppDimensions.textSmallest,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.medium,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColors.yellow,
                      ),
                    ),
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(
                      color: AppColors.grayLight,
                      fontSize: AppDimensions.textSmallest,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.largest,
                ),
                ButtonWidget(
                  text: "Submit",
                  colorText: AppColors.white,
                  colorButton: AppColors.blue,
                  radiusBorder: 8.0,
                  height: MediaQuery.of(context).size.height * 0.07,
                  onPress: '/home/',
                ),
                SizedBox(
                  height: AppDimensions.medium,
                ),
                ButtonWidget(
                  text: "Use Touch ID",
                  colorText: AppColors.black,
                  colorButton: AppColors.white,
                  radiusBorder: 8.0,
                  height: MediaQuery.of(context).size.height * 0.07,
                  onPress: '/touch_id/',
                ),
                SizedBox(
                  height: AppDimensions.largest,
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.white,
            padding: const EdgeInsets.only(top: AppDimensions.small),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  ButtonWidget(
                    text: "Add a New User?",
                    colorButton: AppColors.green,
                    colorText: AppColors.white,
                    radiusBorder: 0.0,
                    height: MediaQuery.of(context).size.height * 0.1,
                    onPress: "",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
