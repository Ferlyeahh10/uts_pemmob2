import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  // GANTI: Koordinat Observatorium Bosscha yang lebih akurat
  // Lintang (Latitude) = -6.824561 (LS)
  // Bujur (Longitude) = 107.6159 (BT)
  final LatLng bosschaCoords = const LatLng(-6.824561, 107.6159);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lokasi Bosscha, Lembang'),
        backgroundColor: Colors.indigo,
      ),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: bosschaCoords,
          initialZoom: 14.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://server.arcgisonline.com/ArcGIS/rest/services/World_Street_Map/MapServer/tile/{z}/{y}/{x}',
            maxZoom: 19,
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: bosschaCoords,
                width: 100,
                height: 100,
                child: const Icon(
                  Icons.star_half,
                  color: Colors.amber,
                  size: 45,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}