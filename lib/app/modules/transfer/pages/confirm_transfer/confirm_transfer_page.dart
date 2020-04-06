import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'confirm_transfer_controller.dart';

class ConfirmTransferPage extends StatefulWidget {
  final String title;
  const ConfirmTransferPage({Key key, this.title = "ConfirmTransfer"})
      : super(key: key);

  @override
  _ConfirmTransferPageState createState() => _ConfirmTransferPageState();
}

class _ConfirmTransferPageState
    extends ModularState<ConfirmTransferPage, ConfirmTransferController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(AppDimensions.large),
      color: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              bottom: AppDimensions.largest,
            ),
            child: Text(
              'Confirmations',
              style: TextStyle(
                color: AppColors.black,
                fontSize: AppDimensions.textLargest,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: AppDimensions.largest,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: AppDimensions.medium,
              bottom: AppDimensions.largest,
            ),
            child: Image.asset(
              'lib/assets/images/confirm.png',
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(
            height: AppDimensions.largest,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: AppDimensions.largest,
            ),
            child: ButtonWidget(
              text: 'Close',
              colorText: AppColors.white,
              colorButton: AppColors.blue,
              radiusBorder: 8,
              onPress: null,
              height: MediaQuery.of(context).size.height * 0.07,
            ),
          ),
        ],
      ),
    ));
  }
}
