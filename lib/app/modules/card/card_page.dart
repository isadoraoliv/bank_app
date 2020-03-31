import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/card_credit_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'card_controller.dart';

class CardPage extends StatefulWidget {
  final String title;
  const CardPage({Key key, this.title = "Card"}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends ModularState<CardPage, CardController> {
  PageController _controller;

  List<Widget> cardList = [
    CardCreditWidget(
      validate: "03/20",
      numberCard: "... .... 7 3 6 2",
      value: "R\$ 2.151.20",
      height: 300,
      width: 600,
      color: AppColors.blue,
    ),
    CardCreditWidget(
      validate: "03/20",
      numberCard: "... .... 7 3 6 2",
      value: "R\$ 2.151.20",
      height: 300,
      width: 600,
      color: AppColors.blue,
    ),
    CardCreditWidget(
      validate: "03/20",
      numberCard: "... .... 7 3 6 2",
      value: "R\$ 2.151.20",
      height: 300,
      width: 600,
      color: AppColors.blue,
    ),
  ];

  @override
  void initState() {
    _controller = PageController(initialPage: 0, viewportFraction: 0.8);
    super.initState();
  }

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
      body: PageView.builder(
        controller: _controller,
        itemCount: cardList.length,
        itemBuilder: (context, position) {
          return cardSlider(position);
        },
      ),
    );
  }

  cardSlider(int index) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, widget) {
        double value = 1;
        if (_controller.position.haveDimensions) {
          value = _controller.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }

        return Column(
          children: <Widget>[
            SizedBox(
              height: Curves.easeInOut.transform(value) * 210,
              width: 800,
              child: widget,
            ),
          ],
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: AppDimensions.small,
          right: AppDimensions.small,
        ),
        child: cardList[index],
      ),
    );
  }
}
