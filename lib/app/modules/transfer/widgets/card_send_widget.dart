import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/circular_avatar_widget.dart';
import 'package:flutter/material.dart';

class CardSendWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      color: AppColors.white,
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            margin: const EdgeInsets.all(AppDimensions.large),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'To',
                      style: TextStyle(
                        color: AppColors.grayDarker,
                        fontSize: AppDimensions.textSmall,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: AppDimensions.medium,
                    ),
                    CircularAvatarWidget(
                      text: '',
                      icon: Icons.person,
                      colorBackground: AppColors.green,
                      colorName: AppColors.grayDark,
                      colorIcon: AppColors.grayDarker,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: AppDimensions.small,
                        ),
                        Text(
                          'Patrícia',
                          style: TextStyle(
                            color: AppColors.grayDarker,
                            fontSize: AppDimensions.textSmall,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'CID: 123456794',
                          style: TextStyle(
                            color: AppColors.grayDarker,
                            fontSize: AppDimensions.textSmall,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  color: AppColors.grayLight,
                ),
                SizedBox(
                  height: AppDimensions.medium,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Account',
                      style: TextStyle(
                        color: AppColors.grayDarker,
                        fontSize: AppDimensions.textSmall,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.medium,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '\$0',
                        hintStyle: TextStyle(
                          color: AppColors.grayDarker,
                          fontSize: AppDimensions.textBig,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: TextStyle(
                        color: AppColors.grayDarker,
                        fontSize: AppDimensions.textBig,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: AppDimensions.medium,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Avaliable Balance:',
                          style: TextStyle(
                            color: AppColors.grayDarker,
                            fontSize: AppDimensions.textSmall,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: AppDimensions.small,
                        ),
                        Text(
                          '\$2.161.20',
                          style: TextStyle(
                            color: AppColors.green,
                            fontSize: AppDimensions.textSmall,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
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
