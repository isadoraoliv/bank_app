import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/button_widget.dart';
import 'package:bank_app/app/modules/shared/widgets/card_credit_widget.dart';
import 'package:bank_app/app/modules/shared/widgets/circular_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'transfer_controller.dart';

class TransferPage extends StatefulWidget {
  final String title;
  const TransferPage({Key key, this.title = "Transfer"}) : super(key: key);

  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState
    extends ModularState<TransferPage, TransferController> {
  bool color = true;

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
            Modular.to.pop();
          },
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            color: AppColors.grayDark,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.whiteDark,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(
              left: AppDimensions.medium,
              right: AppDimensions.medium,
              top: AppDimensions.small,
            ),
            color: AppColors.whiteDark,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      CircularAvatarWidget(
                        text: "Add",
                        icon: Icons.add,
                        colorBackground: AppColors.white,
                        colorName: AppColors.green,
                        colorIcon: AppColors.green,
                      ),
                      CircularAvatarWidget(
                        text: "Patrícia",
                        icon: Icons.person,
                        colorBackground: AppColors.green,
                        colorName: AppColors.grayDark,
                        colorIcon: AppColors.grayDarker,
                      ),
                      CircularAvatarWidget(
                        text: "Billy",
                        icon: Icons.person,
                        colorBackground: AppColors.blue,
                        colorName: AppColors.grayDark,
                        colorIcon: AppColors.grayDarker,
                      ),
                      CircularAvatarWidget(
                        text: "Mike",
                        icon: Icons.person,
                        colorBackground: AppColors.red,
                        colorName: AppColors.grayDarker,
                        colorIcon: AppColors.grayDarker,
                      ),
                      CircularAvatarWidget(
                        text: "Alice",
                        icon: Icons.person,
                        colorBackground: AppColors.yellow,
                        colorName: AppColors.grayDarker,
                        colorIcon: AppColors.grayDarker,
                      ),
                      CircularAvatarWidget(
                        text: "Eduardo",
                        icon: Icons.person,
                        colorBackground: AppColors.white,
                        colorName: AppColors.grayDarker,
                        colorIcon: AppColors.grayDarker,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: AppDimensions.medium,
                      bottom: AppDimensions.medium,
                      right: AppDimensions.medium),
                  child: Text(
                    "Form:",
                    style: TextStyle(
                      color: AppColors.grayDarker,
                      fontSize: AppDimensions.textMedium,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      CardCreditWidget(
                        validate: "03/20",
                        numberCard: "... .... 7 3 6 2",
                        value: "R\$ 2.151.20",
                        height: MediaQuery.of(context).size.height / 4.7,
                        color: AppColors.blue,
                      ),
                      SizedBox(
                        width: AppDimensions.medium,
                      ),
                      CardCreditWidget(
                        validate: "03/20",
                        numberCard: "... .... 7 3 6 2",
                        value: "R\$ 2.151.20",
                        height: MediaQuery.of(context).size.height / 4.7,
                        color: AppColors.blue,
                      ),
                      SizedBox(
                        width: AppDimensions.medium,
                      ),
                      CardCreditWidget(
                        validate: "03/20",
                        numberCard: "... .... 7 3 6 2",
                        value: "R\$ 2.151.20",
                        height: MediaQuery.of(context).size.height / 4.7,
                        color: AppColors.blue,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppDimensions.medium,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: AppDimensions.medium,
                      bottom: AppDimensions.medium,
                      right: AppDimensions.medium),
                  child: Text(
                    "To:",
                    style: TextStyle(
                      color: AppColors.grayDarker,
                      fontSize: AppDimensions.textMedium,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Card(
                  color: AppColors.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4.7,
                    padding: const EdgeInsets.all(AppDimensions.large),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Card Number:",
                          style: TextStyle(
                            fontSize: AppDimensions.textSmall,
                            color: AppColors.grayLight,
                          ),
                        ),
                        SizedBox(
                          height: AppDimensions.largest,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              FontAwesome.credit_card_alt,
                              color: AppColors.grayLight,
                              size: AppDimensions.iconSmall,
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.grayLight,
                              ),
                            ),
                            labelText: "Type here",
                            labelStyle: TextStyle(
                              fontSize: AppDimensions.textSmall,
                              color: AppColors.grayLight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.largest,
                ),
                ButtonWidget(
                  text: "Next",
                  colorText: AppColors.white,
                  colorButton: AppColors.blue,
                  radiusBorder: 8.0,
                  press: null,
                  height: MediaQuery.of(context).size.height * 0.07,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
