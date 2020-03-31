import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String service;
  final String value;
  final Color color;
  final IconData icon;

  const CardWidget({
    Key key,
    @required this.service,
    @required this.value,
    @required this.color,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: color,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 25,
            right: -40,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.white.withOpacity(.2),
            ),
          ),
          Positioned(
            top: -40,
            right: -10,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.white.withOpacity(.2),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.3,
            height: MediaQuery.of(context).size.height * 0.21,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppDimensions.medium,
                    top: AppDimensions.medium,
                    bottom: AppDimensions.small,
                  ),
                  child: Container(
                    width: AppDimensions.iconLargest,
                    height: AppDimensions.iconLargest,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.white,
                    ),
                    child: Icon(
                      icon,
                      size: AppDimensions.iconSmall,
                      color: color,
                    ),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: AppDimensions.medium),
                    child: Text(
                      service,
                      style: TextStyle(
                        fontSize: AppDimensions.textSmall,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: AppDimensions.small),
                    child: Text(
                      "R\$ ${double.parse(value).toStringAsFixed(5)}",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: AppDimensions.textMedium,
                      ),
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
