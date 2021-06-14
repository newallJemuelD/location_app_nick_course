import 'package:flutter/material.dart';

import './models/location.dart';
import './mocks/mock_location.dart';
import './location_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Location> mockLocation = MockLocation.fetchAll();
    return MaterialApp(
      // home: LocationDetail(mockLocation),
      home: LocationList(mockLocation),
    );
  }
}
