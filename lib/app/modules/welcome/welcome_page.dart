import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/card_options_widget.dart';
import 'package:bank_app/app/modules/welcome/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'welcome_controller.dart';

class WelcomePage extends StatefulWidget {
  final String title;
  const WelcomePage({Key key, this.title = "Welcome"}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends ModularState<WelcomePage, WelcomeController> {
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
            padding: EdgeInsets.all(8),
            color: AppColors.whiteDark,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: AppDimensions.medium,
                          right: AppDimensions.small),
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: AppColors.grayMeduim,
                          fontSize: AppDimensions.textLarge,
                        ),
                      ),
                    ),
                    Icon(
                      FontAwesome.hand_spock_o,
                      color: AppColors.grayMeduim,
                      size: AppDimensions.iconSmall,
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.medium,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: AppDimensions.medium),
                  child: Text(
                    "Isadora Oliveira",
                    style: TextStyle(
                      fontSize: AppDimensions.textMedium,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppDimensions.largest,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CardWidget(
                      service: "Savings Account",
                      value: "32.853",
                      color: AppColors.green,
                      icon: FontAwesome.bank,
                    ),
                    SizedBox(
                      width: AppDimensions.medium,
                    ),
                    CardWidget(
                      service: "Deposit Account",
                      value: "23.154",
                      color: AppColors.blue,
                      icon: FontAwesome.id_card,
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.medium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CardWidget(
                      service: "Loan Account",
                      value: "10.431",
                      color: AppColors.red,
                      icon: FontAwesome.money,
                    ),
                    SizedBox(
                      width: AppDimensions.medium,
                    ),
                    CardWidget(
                      service: "Credit Card",
                      value: "15.324",
                      color: AppColors.yellow,
                      icon: FontAwesome.credit_card,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppDimensions.medium,
                    left: AppDimensions.medium,
                    right: AppDimensions.medium,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Quick Actions",
                        style: TextStyle(
                          fontSize: AppDimensions.textMedium,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style: TextStyle(
                            fontSize: AppDimensions.textSmallest,
                            color: AppColors.blue,
                          ),
                        ),
                        color: AppColors.blueLight,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppDimensions.medium,
                    top: AppDimensions.medium,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CardOptionsWidget(
                          icon: FontAwesome.shopping_bag,
                          color: AppColors.green,
                          text: "Make a Payment",
                        ),
                        SizedBox(
                          width: AppDimensions.small,
                        ),
                        CardOptionsWidget(
                          icon: FontAwesome.arrow_circle_down,
                          color: AppColors.yellow,
                          text: "Transfer Money",
                          onTap: '/transfer/',
                        ),
                        SizedBox(
                          width: AppDimensions.small,
                        ),
                        CardOptionsWidget(
                          icon: FontAwesome.info_circle,
                          color: AppColors.blue,
                          text: "Others Informations",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
