import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final String onPress;
  final Color colorText;
  final Color colorButton;
  final double radiusBorder;
  final double height;

  const ButtonWidget({
    Key key,
    @required this.text,
    @required this.colorText,
    @required this.colorButton,
    @required this.radiusBorder,
    this.onPress,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: double.infinity,
        height: height,
        child: FlatButton(
          onPressed: () {
            Modular.to.pushNamed(onPress);
          },
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
                color: colorText,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusBorder),
          ),
          color: colorButton,
        ),
      ),
    );
  }
}
