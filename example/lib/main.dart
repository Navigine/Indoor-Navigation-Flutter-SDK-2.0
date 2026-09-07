import 'dart:core' hide Error;

import 'package:flutter/material.dart';
import 'package:navigine_sdk/com.navigine.dart' hide ImageProvider, Image;
import 'package:navigine_sdk/image_provider.dart' as navigine;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNavigineSdk();
  runApp(MaterialApp(home: MainPage()));
}

int LOCATION_ID = 0; // Put here your location id
int SUBLOCATION_ID = 0; // Put here your sublocation id

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> implements LocationListener {
  late NavigineSdk _sdk;
  late LocationManager _locationManager;
  late LocationWindow _locationWindow;
  late IconMapObject _iconMapObject;
  late PolylineMapObject _polylineMapObject;

  @override
  void initState() {
    super.initState();

    _sdk = NavigineSdk.getInstance();
    _sdk.setServer('https://ips.navigine.com');
    _sdk.setUserHash('0000-0000-0000-0000');

    _locationManager = _sdk.getLocationManager();
    _locationManager.setLocationId(LOCATION_ID);
    _locationManager.addLocationListener(this);
  }

  @override
  void dispose() {
    _locationManager.removeLocationListener(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final iconProvider = navigine.ImageProvider.fromImageProvider(
      const AssetImage('lib/assets/place.png'),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Navigine flutter example')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: LocationView(
                onViewCreated: (LocationWindow locationWindow) {
                  _locationWindow = locationWindow;
                  Future.delayed(const Duration(seconds: 1), () {
                    _locationWindow.setSublocationId(SUBLOCATION_ID);
                  });

                  _iconMapObject = _locationWindow.addIconMapObject();
                  _iconMapObject.setBitmap(iconProvider);
                  _iconMapObject.setSize(40.0, 40.0);
                  _iconMapObject.setCollisionEnabled(false);
                  _iconMapObject.setPriority(1.0);
                  // WGS84 coordinates (replace with points inside your location)
                  _iconMapObject.setPosition(
                    GlobalPoint(40.7128, -74.0060),
                    SUBLOCATION_ID,
                  );
                  _iconMapObject.setVisible(true);

                  _polylineMapObject = _locationWindow.addPolylineMapObject();
                  _polylineMapObject.setColor(const Color.fromRGBO(100, 128, 128, 1.0));
                  _polylineMapObject.setWidth(3.0);
                  _polylineMapObject.setPolyLine(
                    LocationPolyline(
                      [
                        GlobalPoint(40.7128, -74.0060),
                        GlobalPoint(40.7135, -74.0050),
                      ],
                      SUBLOCATION_ID,
                    ),
                  );
                  _polylineMapObject.setVisible(true);
                },
              ),
            ),
          ),
        ],
      ),
    );
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
