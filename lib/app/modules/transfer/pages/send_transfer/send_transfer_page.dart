import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/button_widget.dart';
import 'package:bank_app/app/modules/transfer/pages/send_transfer/send_transfer_controller.dart';
import 'package:bank_app/app/modules/transfer/widgets/card_send_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SendTransferPage extends StatefulWidget {
  final String title;
  const SendTransferPage({Key key, this.title = "SendTransfer"})
      : super(key: key);

  @override
  _SendTransferPageState createState() => _SendTransferPageState();
}

class _SendTransferPageState
    extends ModularState<SendTransferPage, SendTransferController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteDark,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.grayDark,
              size: AppDimensions.iconMeduim,
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/', ModalRoute.withName('/'));
            }),
        title: Text(
          'Transfer',
          style: TextStyle(
            color: AppColors.grayDark,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(AppDimensions.medium),
          color: AppColors.whiteDark,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: AppDimensions.medium,
              ),
              CardSendWidget(),
              SizedBox(
                height: AppDimensions.largest,
              ),
              ButtonWidget(
                text: 'Send',
                colorText: AppColors.white,
                colorButton: AppColors.blue,
                radiusBorder: 8,
                onPress: '/confirm_transfer/',
                height: MediaQuery.of(context).size.height * 0.07,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
