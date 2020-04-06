import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CreditCardList extends StatelessWidget {
  final String value;
  final String numberCard;
  final String validate;
  final Color color;

  const CreditCardList({
    Key key,
    @required this.value,
    @required this.numberCard,
    @required this.validate,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: color,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -150,
            right: -60,
            child: CircleAvatar(
              radius: 130,
              backgroundColor: AppColors.white.withOpacity(.1),
            ),
          ),
          Positioned(
            top: -160,
            right: -60,
            child: CircleAvatar(
              radius: 120,
              backgroundColor: AppColors.white.withOpacity(.1),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.82,
            padding: const EdgeInsets.all(
              AppDimensions.large,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      FontAwesome.bank,
                      color: AppColors.white,
                      size: AppDimensions.iconSmall,
                    ),
                    Text(
                      validate,
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: AppDimensions.medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.medium,
                ),
                Text(
                  "Balance",
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: AppDimensions.medium,
                  ),
                ),
                SizedBox(
                  height: AppDimensions.small,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      value,
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: AppDimensions.large,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.medium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      "lib/assets/images/mastercard.png",
                      height: AppDimensions.imageLarge,
                      width: AppDimensions.imageLarge,
                    ),
                    SizedBox(
                      width: AppDimensions.small,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: AppDimensions.largest,
                      ),
                      child: Text(
                        numberCard,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: AppDimensions.textMedium,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: AppDimensions.largest,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: AppDimensions.largest,
                      ),
                      child: Icon(
                        FontAwesome.credit_card,
                        size: AppDimensions.iconMeduim,
                        color: AppColors.grayDarker,
                      ),
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
