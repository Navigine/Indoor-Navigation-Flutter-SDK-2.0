import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
import 'package:navigine_sdk/library_context.dart';
import 'package:navigine_sdk/com.navigine.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNavigineSdk();
  runApp(MaterialApp(home: MainPage()));
}

int LOCATION_ID = 0; // Put here your location id
int SUBLOCATION_ID = 0;  // Put here your sublocation id

class MainPage extends StatelessWidget with WidgetsBindingObserver implements LocationListener {

  late NavigineSdk _sdk;
  late LocationManager _locationManager;
  late LocationWindow _locationWindow;
  late IconMapObject _iconMapObject;
  late PolylineMapObject _polylineMapObject;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.removeObserver(this);

    _sdk = NavigineSdk.getInstance();
    _sdk.setServer('https://ips.navigine.com');
    _sdk.setUserHash('0000-0000-0000-0000');

    _locationManager = _sdk.getLocationManager();
    _locationManager.setLocationId(LOCATION_ID);
    _locationManager.addLocationListener(this);

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
                  Future.delayed(Duration(seconds: 1), () {
                    _locationWindow.setSublocationId(SUBLOCATION_ID);
                  });

                  _iconMapObject = _locationWindow.addIconMapObject();
                  await imageWrapper.then((image) => _iconMapObject.setBitmap(image));
                  _iconMapObject.setSize(40.0, 40.0);
                  _iconMapObject.setCollisionEnabled(false);
                  _iconMapObject.setPriority(1);
                  _iconMapObject.setPosition(LocationPoint(Point(10, 10), LOCATION_ID, SUBLOCATION_ID));
                  _iconMapObject.setVisible(true);

                  _polylineMapObject = _locationWindow.addPolylineMapObject();
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

  @override
  void dispose() {
    _locationManager.removeLocationListener(this);
  }

  @override
  void onLocationFailed(int locationId, Error error) {
    print('On Location failed $locationId ${error.code} ${error.message}');
  }

  @override
  void onLocationLoaded(Location location) {
    print('On Location Loaded ${location.id} ${location.name}');
  }

  @override
  void onLocationUploaded(int locationId) {
    // TODO: implement onLocationUploaded
  }
}
