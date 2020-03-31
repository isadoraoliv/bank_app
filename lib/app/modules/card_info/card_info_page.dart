import 'package:bank_app/app/modules/card_info/card_info_controller.dart';
import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardInfoPage extends StatefulWidget {
  final String title;
  const CardInfoPage({Key key, this.title = "CardInfo"}) : super(key: key);

  @override
  _CardInfoPageState createState() => _CardInfoPageState();
}

class _CardInfoPageState extends ModularState<CardInfoPage, CardInfoController>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.grayDark,
            size: AppDimensions.iconMeduim,
          ),
          onPressed: () {
            Modular.to.pop();
          },
        ),
        elevation: 0,
        backgroundColor: AppColors.white,
        title: Text(
          "Card Info",
          style: TextStyle(
            color: AppColors.grayDark,
          ),
        ),
      ),

      ///BODY
      body: Container(
        color: AppColors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            TabBar(
              controller: _tabController,
              tabs: <Tab>[
                Tab(
                  text: "Day",
                ),
                Tab(
                  text: "Week",
                ),
                Tab(
                  text: "Month",
                ),
              ],
            ),
            TabBarView(
              controller: _tabController,
              children: <Widget>[
                /// paginas
              ],
            ),
          ],
        ),
      ),
    );
  }
}
