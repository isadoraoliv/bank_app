import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

class CardValueWidget extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const CardValueWidget({
    Key key,
    @required this.title,
    @required this.value,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: color,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: -30,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.white.withOpacity(.2),
            ),
          ),
          Positioned(
            top: -30,
            right: -0,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.white.withOpacity(.2),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.3,
            height: MediaQuery.of(context).size.height / 9,
            padding: const EdgeInsets.all(AppDimensions.medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: AppDimensions.textSmall,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: AppDimensions.small,
                ),
                Text(
                  "R\$ ${double.parse(value).toStringAsFixed(5)}",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: AppDimensions.textSmall,
                    fontWeight: FontWeight.bold,
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
