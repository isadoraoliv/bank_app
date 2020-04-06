import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RouteCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 550,
      left: AppDimensions.largest,
      right: AppDimensions.largest,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.12,
        padding: EdgeInsets.only(
          top: AppDimensions.medium,
          left: AppDimensions.large,
          right: AppDimensions.largest,
          bottom: AppDimensions.medium,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.blue,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 9,
              height: MediaQuery.of(context).size.width / 9,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                FontAwesome.bank,
                color: AppColors.blue,
                size: AppDimensions.iconSmall,
              ),
            ),
            SizedBox(
              width: AppDimensions.medium,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'TK Bank',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: AppDimensions.textMedium,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: AppDimensions.medium,
                    ),
                    Text(
                      '8 min',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: AppDimensions.textSmall,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Text(
                  '78. Satmasjd Road, Draka',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: AppDimensions.textSmall,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: AppDimensions.largest,
            ),
            Icon(
              FontAwesome.send,
              color: AppColors.white,
              size: AppDimensions.iconMeduim,
            ),
          ],
        ),
      ),
    );
  }
}
