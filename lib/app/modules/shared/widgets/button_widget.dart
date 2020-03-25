import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;

  const ButtonWidget({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(AppDimensions.medium),
        height: MediaQuery.of(context).size.height * 0.1,
        child: FlatButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppDimensions.medium,
              top: AppDimensions.smallest,
              bottom: AppDimensions.smallest,
              right: AppDimensions.medium,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: AppDimensions.textSmall,
                color: AppColors.white,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: AppColors.blue,
        ),
      ),
    );
  }
}
