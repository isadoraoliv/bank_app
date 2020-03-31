import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/button_widget.dart';
import 'package:bank_app/app/modules/touch_id/touch_id_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TouchIdPage extends StatefulWidget {
  final String title;
  const TouchIdPage({Key key, this.title = "TouchId"}) : super(key: key);

  @override
  _TouchIdPageState createState() => _TouchIdPageState();
}

class _TouchIdPageState extends ModularState<TouchIdPage, TouchIdController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.grayDark,
            size: AppDimensions.iconMeduim,
          ),
          onPressed: () {
            Modular.to.pop();
          },
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          left: AppDimensions.large,
          top: AppDimensions.medium,
          right: AppDimensions.large,
        ),
        color: AppColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              FontAwesome.bank,
              color: AppColors.blue,
              size: AppDimensions.iconLargest,
            ),
            SizedBox(
              height: AppDimensions.largest,
            ),
            Text(
              "Do you want",
              style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: AppDimensions.textLarge,
              ),
            ),
            SizedBox(
              height: AppDimensions.smallest,
            ),
            Text(
              "to use touch ID to login in?",
              style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: AppDimensions.textLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: AppDimensions.medium,
                right: AppDimensions.largest,
                bottom: AppDimensions.largest,
              ),
              child: Text(
                "Please authenticate your Fingerprint by placing your finger over the sensor of your device.",
                maxLines: 3,
                style: TextStyle(
                  color: AppColors.grayLight,
                  fontWeight: FontWeight.w300,
                  fontSize: AppDimensions.textMedium,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(
              height: AppDimensions.largest,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: AppDimensions.largest),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(color: AppColors.grayLighter),
                    color: AppColors.white,
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Icon(
                    Icons.fingerprint,
                    size: AppDimensions.iconFinger,
                    color: AppColors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppDimensions.largest,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: AppDimensions.large,
                bottom: AppDimensions.medium,
              ),
              child: ButtonWidget(
                text: "Use Touch Id",
                onPress: '/home',
                colorText: AppColors.white,
                colorButton: AppColors.blue,
                radiusBorder: 8.0,
                height: MediaQuery.of(context).size.height * 0.07,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: AppDimensions.medium),
              child: ButtonWidget(
                text: "No thanks",
                onPress: '/login/',
                colorText: AppColors.black,
                colorButton: AppColors.white,
                radiusBorder: 8.0,
                height: MediaQuery.of(context).size.height * 0.07,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
