import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

class CardDetailsWidget extends StatelessWidget {
  final String title;
  final String data;
  final String hour;
  final String value;
  final Color color;
  final IconData icon;

  const CardDetailsWidget(
      {Key key,
      @required this.title,
      @required this.data,
      @required this.hour,
      @required this.value,
      @required this.color,
      @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          top: AppDimensions.medium,
          left: AppDimensions.medium,
          right: AppDimensions.medium,
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 7,
              height: MediaQuery.of(context).size.width / 7,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                icon,
                color: AppColors.white,
                size: AppDimensions.iconMeduim,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppDimensions.medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppDimensions.textSmall,
                      color: AppColors.grayDarker,
                    ),
                  ),
                  SizedBox(
                    height: AppDimensions.smallest,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        data,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: AppDimensions.textSmall,
                          color: AppColors.grayDark,
                        ),
                      ),
                      SizedBox(
                        width: AppDimensions.smallest,
                      ),
                      Text(
                        hour,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: AppDimensions.textSmall,
                          color: AppColors.grayDark,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: AppDimensions.largest,
            ),
            Padding(
              padding: const EdgeInsets.all(AppDimensions.medium),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    value,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppDimensions.textSmall,
                      color: AppColors.grayDarker,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
