import 'dart:ui';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

class CircularAvatarWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Image image;
  final Color colorIcon;
  final Color colorName;
  final Color colorBackground;

  const CircularAvatarWidget({
    Key key,
    this.text,
    this.colorName,
    this.image,
    @required this.colorBackground,
    @required this.colorIcon,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: AppDimensions.large,
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 8,
            height: MediaQuery.of(context).size.height / 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: colorBackground,
            ),
            child: Icon(
              icon,
              color: colorIcon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: AppDimensions.small,
              right: AppDimensions.small,
            ),
            child: Text(
              text,
              style: TextStyle(
                color: colorName,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
