import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CardOptionsWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const CardOptionsWidget({
    Key key,
    @required this.icon,
    @required this.color,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: AppColors.whiteDark,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(AppDimensions.small),
            width: MediaQuery.of(context).size.width * 0.4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 9,
                  height: MediaQuery.of(context).size.width / 9,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    color: AppColors.white,
                    size: AppDimensions.iconSmall,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: AppDimensions.medium,
                      top: AppDimensions.small,
                    ),
                    child: Text(
                      text,
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
