import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/circular_avatar_widget.dart';
import 'package:flutter/material.dart';

class PaymentCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      padding: const EdgeInsets.all(
        AppDimensions.large,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: AppDimensions.small,
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
                  Text(
                    'Isadora Oliveira',
                    style: TextStyle(
                      color: AppColors.grayDarker,
                      fontSize: AppDimensions.textSmall,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: AppDimensions.smallest,
                  ),
                  Text(
                    'A/c 0248612563417',
                    style: TextStyle(
                      color: AppColors.grayLight,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(AppDimensions.smallest),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.whiteDark,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.2,
                  margin: EdgeInsets.all(AppDimensions.smallest),
                  padding: EdgeInsets.all(AppDimensions.smallest),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.grayDarker,
                  ),
                  child: Image.asset(
                    'lib/assets/images/visa.png',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Credit Card',
                      style: TextStyle(
                        color: AppColors.grayDarker,
                        fontSize: AppDimensions.textSmall,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Visacard - 4521',
                      style: TextStyle(
                        color: AppColors.grayMeduim,
                        fontSize: AppDimensions.textSmallest,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: AppDimensions.largest,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.grayDarker,
                  size: AppDimensions.iconSmall,
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppDimensions.largest,
          ),
          Column(
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
              Text(
                'Shopping',
                style: TextStyle(
                  color: AppColors.grayDarker,
                  fontSize: AppDimensions.textSmall,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: AppDimensions.large,
              ),
            ],
          ),
          SizedBox(
            height: AppDimensions.largest,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(AppDimensions.small),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.blueLight,
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.info,
                  color: AppColors.blue,
                ),
                SizedBox(
                  width: AppDimensions.small,
                ),
                Text(
                  'Bank free (3.5) will be applied',
                  style: TextStyle(
                    color: AppColors.blue,
                    fontWeight: FontWeight.w500,
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
