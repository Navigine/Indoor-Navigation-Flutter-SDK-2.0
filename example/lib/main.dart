import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
import 'package:navigine_sdk/library_context.dart';
import 'package:navigine_sdk/com.navigine.dart';

void main() {
  runApp(MaterialApp(home: MainPage()));
}

int LOCATION_ID = 1303; // Put here your location id
int SUBLOCATION_ID = 1739;  // Put here your sublocation id

class MainPage extends StatelessWidget with WidgetsBindingObserver {
  // Future<bool> get locationPermissionNotGranted async => !(await Permission.location.request().isGranted);
  // Future<bool> get bluetoothscanPermissionNotGranted async => !(await Permission.bluetoothScan.request().isGranted);
  // Future<bool> get bluetoothPermissionNotGranted async => !(await Permission.bluetoothConnect.request().isGranted);

  void _showMessage(BuildContext context, Text text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: text));
  }

  void _hideMessage(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  late NavigineSdk _sdk;
  late LocationManager _locationManager;
  late LocationWindow _locationWindow;
  late IconMapObject _iconMapObject;
  late PolylineMapObject _polylineMapObject;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.removeObserver(this);

    LibraryContext.init(IsolateOrigin.main);

    _sdk = NavigineSdk.getInstance();
    _sdk.setServer("https://ips.navigine.com");
    _sdk.setUserHash("7F4C-A0FE-4759-E444");

    _locationManager = _sdk.getLocationManager();
    _locationManager.setLocationId(LOCATION_ID);
    _locationManager.addLocationListener(LocationListener((location) {
      print('On Location Loaded');
      print(location.id);
    }, (int locationId, Error error) {
      print("On Location failed");
      print(locationId);
      print(error.code);
      print(error.message);
    }, (int locationId) {
      print("On Location uploaded");
      print(locationId);
    }));

    final imageWrapper = ImageWrapper.fromImageProvider(AssetImage(
      'lib/assets/place.png',
    ));

    return Scaffold(
      appBar: AppBar(title: const Text('Navigine flutter example')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              // child: img?.image,
              child: LocationView(
                onViewCreated: (LocationWindow locationWindow) async {
                  _locationWindow = locationWindow;
                  // Future.delayed(Duration(seconds: 1), () {
                    _locationWindow.setSublocationId(SUBLOCATION_ID);
                  // });

                  _iconMapObject = (_locationWindow.addIconMapObject())!;
                  await imageWrapper.then((image) => _iconMapObject.setBitmap(image));
                  _iconMapObject.setSize(40.0, 40.0);
                  _iconMapObject.setStyle("{order: 1, collide: false}");
                  _iconMapObject.setPosition(LocationPoint(Point(10, 10), LOCATION_ID, SUBLOCATION_ID));
                  _iconMapObject.setVisible(true);

                  _polylineMapObject = (_locationWindow.addPolylineMapObject())!;
                  _polylineMapObject.setColor(100/255.0, 0.5, 0.5, 1);
                  _polylineMapObject.setWidth(3.0);
                  _polylineMapObject.setPolyLine(LocationPolyline(Polyline([Point(0.0, 0.0), Point(3.0, 10.0)]), LOCATION_ID, SUBLOCATION_ID));
                  _polylineMapObject.setVisible(true);
                },
              )
            )
          )
        ]
      )
    );
  }
}
