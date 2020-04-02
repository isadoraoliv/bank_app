import 'package:bank_app/app/modules/payment/widgets/payment_card_widget.dart';
import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'payment_controller.dart';

class PaymentPage extends StatefulWidget {
  final String title;
  const PaymentPage({Key key, this.title = "Payment"}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends ModularState<PaymentPage, PaymentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.grayDark,
            size: AppDimensions.iconMeduim,
          ),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            color: AppColors.grayDark,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesome.qrcode,
                color: AppColors.blue,
                size: AppDimensions.iconMeduim,
              ),
              onPressed: null)
        ],
        elevation: 0,
        backgroundColor: AppColors.whiteDark,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: AppDimensions.largest,
              right: AppDimensions.largest,
            ),
            color: AppColors.whiteDark,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: AppDimensions.largest,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppDimensions.medium,
                    bottom: AppDimensions.largest,
                  ),
                  child: PaymentCardWidget(),
                ),
                SizedBox(
                  height: AppDimensions.large,
                ),
                ButtonWidget(
                  text: 'Send',
                  colorText: AppColors.white,
                  colorButton: AppColors.blue,
                  radiusBorder: 8,
                  onPress: '/welcome/',
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
