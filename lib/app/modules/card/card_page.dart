import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/card_options_widget.dart';
import 'package:bank_app/app/modules/shared/widgets/credit_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'card_controller.dart';

class CardPage extends StatefulWidget {
  final String title;
  const CardPage({Key key, this.title = "Card"}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends ModularState<CardPage, CardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(
            left: AppDimensions.medium,
            top: AppDimensions.small,
            bottom: AppDimensions.small,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.blue,
            ),
            child: Icon(Icons.person),
          ),
        ),
        backgroundColor: AppColors.whiteDark,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: AppDimensions.medium,
              top: AppDimensions.small,
              bottom: AppDimensions.small,
              right: AppDimensions.medium,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.blueLight,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: AppColors.blue,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(
              AppDimensions.large,
            ),
            color: AppColors.whiteDark,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CreditCardList(
                        value: '\$2.151.20',
                        numberCard: '.... .... 7362',
                        validate: '04/23',
                        color: AppColors.blue,
                      ),
                      CreditCardList(
                        value: '\$2.440.20',
                        numberCard: '.... .... 4501',
                        validate: '04/24',
                        color: AppColors.green,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppDimensions.largest,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CardOptionsWidget(
                      icon: FontAwesome.pie_chart,
                      color: AppColors.yellow,
                      text: 'Card Info',
                      onTap: '/card_info/',
                    ),
                    SizedBox(
                      width: AppDimensions.small,
                    ),
                    CardOptionsWidget(
                      icon: FontAwesome.history,
                      color: AppColors.blueLighter,
                      text: 'History',
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.small,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CardOptionsWidget(
                      icon: FontAwesome.edit,
                      color: AppColors.blue,
                      text: 'Withdraw',
                    ),
                    SizedBox(
                      width: AppDimensions.small,
                    ),
                    CardOptionsWidget(
                      icon: FontAwesome.money,
                      color: AppColors.purple,
                      text: 'Converter',
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.small,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CardOptionsWidget(
                      icon: FontAwesome.edit,
                      color: AppColors.red,
                      text: 'Loans',
                    ),
                    SizedBox(
                      width: AppDimensions.small,
                    ),
                    CardOptionsWidget(
                      icon: Icons.settings,
                      color: AppColors.green,
                      text: 'Card Options',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
