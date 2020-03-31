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
        showUnselectedLabels: false,
        unselectedItemColor: AppColors.grayLighter,
        currentIndex: controller.currentPage,
        onTap: controller.changePage,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.home,
            ),
            title: Text(
              "",
              style: TextStyle(
                fontSize: AppDimensions.textSmallest,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.pie_chart,
            ),
            title: Text(
              "",
              style: TextStyle(
                fontSize: AppDimensions.textSmallest,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.credit_card,
            ),
            title: Text(
              "",
              style: TextStyle(
                fontSize: AppDimensions.textSmallest,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.paper_plane,
            ),
            title: Text(
              "",
              style: TextStyle(
                fontSize: AppDimensions.textSmallest,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineIcons.sliders,
            ),
            title: Text(
              "",
              style: TextStyle(
                fontSize: AppDimensions.textSmallest,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
