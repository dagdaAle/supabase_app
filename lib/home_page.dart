import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _navigateToDetailPage(String title, String snippet) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(title: title, snippet: snippet),
      ),
    );
  }

  final LatLng _veronaLatLng = const LatLng(45.4384, 10.9916);
  GoogleMapController? _mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verona Map'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _veronaLatLng,
          zoom: 12,
        ),
        onMapCreated: (GoogleMapController controller) {
          _mapController = controller;
        },
        markers: <Marker>{
          Marker(
            markerId: const MarkerId('verona_marker'),
            position: _veronaLatLng,
            infoWindow: const InfoWindow(
              title: 'Verona',
              snippet: 'City of love',
            ),
            onTap: () {
              _navigateToDetailPage('Verona', 'City of love');
            },
          ),
        },
      ),
    );
  }
}
