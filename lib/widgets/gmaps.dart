import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:molly/screens/station_info.dart';

import '../themes/custom_theme.dart';

class Gmaps extends StatefulWidget {
  const Gmaps({Key? key}) : super(key: key);

  @override
  State<Gmaps> createState() => _GmapsState();
}

class _GmapsState extends State<Gmaps> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(51.409496, -0.075739);
  Set<Marker> markers = {};
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      List<Marker> resultMarker = [
        Marker(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StationInfo()),
              );
            },
            markerId: MarkerId("id"),
            position: LatLng(51.409496, -0.075739),
            icon: BitmapDescriptor.defaultMarker),
        Marker(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StationInfo()),
              );
            },
            markerId: MarkerId("id2"),
            position: LatLng(51.409496, -0.175739),
            icon: BitmapDescriptor.defaultMarker),
      ];
      markers.addAll(resultMarker);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: CustomTheme.appColors.primaryColor,
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: markers,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
