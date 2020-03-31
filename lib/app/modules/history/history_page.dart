import 'package:bank_app/app/modules/history/widget/bar_graph_widget.dart';
import 'package:bank_app/app/modules/history/widget/card_value_widget.dart';
import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/card_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'history_controller.dart';

class HistoryPage extends StatefulWidget {
  final String title;
  const HistoryPage({Key key, this.title = "History"}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends ModularState<HistoryPage, HistoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(
            left: AppDimensions.medium,
            top: AppDimensions.small,
            bottom: AppDimensions.small,
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.blue,
            ),
            child: Icon(Icons.person),
          ),
        ),
        backgroundColor: AppColors.whiteDark,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: AppDimensions.medium,
              top: AppDimensions.small,
              bottom: AppDimensions.small,
              right: AppDimensions.medium,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.blueLight,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: AppColors.blue,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: AppDimensions.medium,
          left: AppDimensions.medium,
          right: AppDimensions.medium,
        ),
        color: AppColors.whiteDark,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CardValueWidget(
                      title: "Income",
                      value: "4.153",
                      color: AppColors.green,
                    ),
                    CardValueWidget(
                      title: "Expanse",
                      value: "6.253",
                      color: AppColors.blue,
                    ),
                  ],
                ),
                SizedBox(
                  height: AppDimensions.large,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.38,
                        child: BarGraphWidget(),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: AppDimensions.medium,
                    left: AppDimensions.medium,
                    right: AppDimensions.medium,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "History",
                        style: TextStyle(
                          fontSize: AppDimensions.textMedium,
                          fontWeight: FontWeight.bold,
                          color: AppColors.grayDarker,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Daily",
                          style: TextStyle(
                            fontSize: AppDimensions.textSmallest,
                            color: AppColors.blue,
                          ),
                        ),
                        color: AppColors.blueLight,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      CardDetailsWidget(
                        title: "Restaurants",
                        data: "23.05.2019",
                        hour: "5:41 PM",
                        value: "-3.623",
                        color: AppColors.blue,
                        icon: Icons.restaurant,
                      ),
                      CardDetailsWidget(
                        title: "Medicine",
                        data: "23.05.2019",
                        hour: "3:20 PM",
                        value: "-2.680",
                        color: AppColors.green,
                        icon: Icons.local_hospital,
                      ),
                      CardDetailsWidget(
                        title: "Eletronics",
                        data: "22.05.2019",
                        hour: "9:50 AM",
                        value: "-4.250",
                        color: AppColors.yellow,
                        icon: Icons.computer,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
