import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/card_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'card_info_controller.dart';

class CardInfoPage extends StatefulWidget {
  @override
  _CardInfoPageState createState() => _CardInfoPageState();
}

class _CardInfoPageState
    extends ModularState<CardInfoPage, CardInfoController> {
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
              color: AppColors.grayMeduim,
              size: AppDimensions.iconMeduim,
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/', ModalRoute.withName('/'));
            }),
        title: Text(
          'Card Info',
          style: TextStyle(
            color: AppColors.grayDark,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            color: AppColors.whiteDark,
            padding: const EdgeInsets.only(
              top: AppDimensions.large,
              left: AppDimensions.medium,
              right: AppDimensions.small,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppDimensions.medium,
                    right: AppDimensions.medium,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Day',
                        style: TextStyle(
                          color: AppColors.grayDark,
                          fontWeight: FontWeight.bold,
                          fontSize: AppDimensions.textSmall,
                        ),
                      ),
                      SizedBox(
                        width: AppDimensions.medium,
                      ),
                      Text(
                        'Week',
                        style: TextStyle(
                          color: AppColors.grayMeduim,
                          fontWeight: FontWeight.w300,
                          fontSize: AppDimensions.textSmall,
                        ),
                      ),
                      SizedBox(
                        width: AppDimensions.medium,
                      ),
                      Text(
                        'Month',
                        style: TextStyle(
                          color: AppColors.grayMeduim,
                          fontWeight: FontWeight.w300,
                          fontSize: AppDimensions.textSmall,
                        ),
                      ),
                      SizedBox(
                        width: AppDimensions.medium,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: AppDimensions.medium,
                    right: AppDimensions.medium,
                    bottom: AppDimensions.medium,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'History',
                        style: TextStyle(
                          fontSize: AppDimensions.textMedium,
                          fontWeight: FontWeight.bold,
                          color: AppColors.grayDarker,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          CardDetailsWidget(
                            title: 'Restaurants',
                            data: '20 March 2020',
                            hour: '8:17',
                            value: '-\$3.621',
                            color: AppColors.blue,
                            icon: Icons.restaurant,
                          ),
                          CardDetailsWidget(
                            title: "Medicine",
                            data: "15 March 2020",
                            hour: "15:20",
                            value: "-2.680",
                            color: AppColors.green,
                            icon: Icons.local_hospital,
                          ),
                          CardDetailsWidget(
                            title: 'Supermarket',
                            data: '02 March 2020',
                            hour: '19:05',
                            value: '-\$2.980',
                            color: AppColors.red,
                            icon: Icons.shopping_cart,
                          ),
                          CardDetailsWidget(
                            title: 'Ben Mengico',
                            data: '03 April 2020',
                            hour: '08:20',
                            value: '-\$2.320',
                            color: AppColors.yellow,
                            icon: Icons.person,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
