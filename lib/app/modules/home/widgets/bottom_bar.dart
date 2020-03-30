import 'package:bank_app/app/modules/home/home_controller.dart';
import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:line_icons/line_icons.dart';

class BottomBarWidget extends StatefulWidget {
  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState
    extends ModularState<BottomBarWidget, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => BottomNavigationBar(
              unselectedItemColor: AppColors.grayLighter,
              currentIndex: controller.currentPage,
              onTap: controller.changePage,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.home,
                    color: AppColors.grayLighter,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(
                      color: AppColors.grayLighter,
                      fontSize: AppDimensions.textSmall,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.pie_chart,
                    color: AppColors.grayLighter,
                  ),
                  title: Text(
                    "Graph",
                    style: TextStyle(
                      color: AppColors.grayLighter,
                      fontSize: AppDimensions.textSmall,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.credit_card,
                    color: AppColors.grayLighter,
                  ),
                  title: Text(
                    "Card",
                    style: TextStyle(
                      color: AppColors.grayLighter,
                      fontSize: AppDimensions.textSmall,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.paper_plane,
                    color: AppColors.grayLighter,
                  ),
                  title: Text(
                    "Map",
                    style: TextStyle(
                      color: AppColors.grayLighter,
                      fontSize: AppDimensions.textSmall,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    LineIcons.sliders,
                    color: AppColors.grayLighter,
                  ),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                      color: AppColors.grayLighter,
                      fontSize: AppDimensions.textSmall,
                    ),
                  ),
                ),
              ],
            ));
  }
}
