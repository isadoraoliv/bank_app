import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "Profile"}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          widget.title,
          style: TextStyle(
            color: AppColors.grayDarker,
            fontSize: AppDimensions.textLarge,
          ),
        ),
        backgroundColor: AppColors.white,
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
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.only(
              left: AppDimensions.medium,
              right: AppDimensions.medium,
              top: AppDimensions.largest,
            ),
            color: AppColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: AppColors.blue,
                      child: Container(
                        padding: const EdgeInsets.all(AppDimensions.medium),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Stack(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.12,
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.white,
                                  ),
                                  child: Icon(Icons.person),
                                ),
                                SizedBox(
                                  width: AppDimensions.large,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Isadora Oliveira",
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: AppDimensions.textSmall,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Customer ID: 123456789",
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize: AppDimensions.textSmall,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: AppDimensions.large,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.035,
                                      child: FlatButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                            fontSize:
                                                AppDimensions.textSmallest,
                                            color: AppColors.blue,
                                          ),
                                        ),
                                        color: AppColors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: AppDimensions.largest,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppDimensions.small,
                    top: AppDimensions.largest,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 10,
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColors.blue,
                            ),
                            child: Icon(
                              Icons.info,
                              color: AppColors.white,
                              size: AppDimensions.iconSmall,
                            ),
                          ),
                          SizedBox(
                            width: AppDimensions.medium,
                          ),
                          Text(
                            "Information",
                            style: TextStyle(
                              color: AppColors.grayDarker,
                              fontSize: AppDimensions.textMedium,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppDimensions.largest,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 10,
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColors.green,
                            ),
                            child: Icon(
                              Icons.security,
                              color: AppColors.white,
                              size: AppDimensions.iconSmall,
                            ),
                          ),
                          SizedBox(
                            width: AppDimensions.medium,
                          ),
                          Text(
                            "Security",
                            style: TextStyle(
                              color: AppColors.grayDarker,
                              fontSize: AppDimensions.textMedium,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppDimensions.largest,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 10,
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColors.blueLighter,
                            ),
                            child: Icon(
                              Icons.message,
                              color: AppColors.white,
                              size: AppDimensions.iconSmall,
                            ),
                          ),
                          SizedBox(
                            width: AppDimensions.medium,
                          ),
                          Text(
                            "Contact us",
                            style: TextStyle(
                              color: AppColors.grayDarker,
                              fontSize: AppDimensions.textMedium,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppDimensions.largest,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 10,
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange,
                            ),
                            child: Icon(
                              FontAwesome.user,
                              color: AppColors.white,
                              size: AppDimensions.iconSmall,
                            ),
                          ),
                          SizedBox(
                            width: AppDimensions.medium,
                          ),
                          Text(
                            "Suport",
                            style: TextStyle(
                              color: AppColors.grayDarker,
                              fontSize: AppDimensions.textMedium,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppDimensions.largest,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 10,
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red,
                            ),
                            child: Icon(
                              Icons.exit_to_app,
                              color: AppColors.white,
                              size: AppDimensions.iconSmall,
                            ),
                          ),
                          SizedBox(
                            width: AppDimensions.medium,
                          ),
                          Text(
                            "Log out",
                            style: TextStyle(
                              color: AppColors.grayDarker,
                              fontSize: AppDimensions.textMedium,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
