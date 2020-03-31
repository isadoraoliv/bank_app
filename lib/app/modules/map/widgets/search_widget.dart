import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDimensions.largest,
      right: AppDimensions.large,
      left: AppDimensions.large,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.07,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: AppDimensions.medium),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                  color: AppColors.grayLight,
                  fontSize: AppDimensions.textSmall),
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: AppColors.grayLight,
                  size: AppDimensions.iconLarge,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
