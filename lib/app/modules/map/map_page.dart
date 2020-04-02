import 'dart:async';

import 'package:bank_app/app/modules/map/widgets/card_route_widget.dart';
import 'package:bank_app/app/modules/map/widgets/search_widget.dart';
import 'package:bank_app/app/modules/shared/utils/app_colors.dart';
import 'package:bank_app/app/modules/shared/utils/app_dimensions.dart';
import 'package:bank_app/app/modules/shared/widgets/icon_squard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'map_controller.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends ModularState<MapPage, MapController> {
  double lat = -19.8157;
  double long = -43.9542;

  GoogleMapController mapController;

  _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            GoogleMap(
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              onCameraMove: (data) {
                print(data);
              },
              onTap: (position) {
                print(position);
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(lat, long),
                zoom: 11.0,
              ),
            ),
            SearchWidget(),
            Positioned(
              top: 450,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(
                    top: AppDimensions.largest,
                    left: AppDimensions.largest,
                    right: AppDimensions.largest,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      IconSquardWidget(
                        colorIcon: AppColors.grayDarker,
                        colorBackground: AppColors.white,
                        icon: Icons.location_searching,
                      ),
                    ],
                  )),
            ),
            RouteCardWidget(),
          ],
        ),
      ),
    );
  }
}
