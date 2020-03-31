import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

class IconSquardWidget extends StatelessWidget {
  final Color colorIcon;
  final Color colorBackground;
  final IconData icon;

  const IconSquardWidget({
    Key key,
    @required this.colorIcon,
    @required this.colorBackground,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 9,
      height: MediaQuery.of(context).size.width / 9,
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(
        icon,
        color: colorIcon,
        size: AppDimensions.iconSmall,
      ),
    );
  }
}
