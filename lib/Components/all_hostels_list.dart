import 'package:flutter/material.dart';
import 'package:hostel_hub/Components/all_hostel_tile.dart';

class HostelTile extends StatelessWidget {
  final String hostelTileImage;
  final String hostelTileName;
  final String hostelTileLocation;
  final String hostelTileRent;
  const HostelTile({
    Key? key,
    required this.hostelTileImage,
    required this.hostelTileName,
    required this.hostelTileLocation,
    required this.hostelTileRent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('All Hostels',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 20,
          ),
          AllHostelTile(
              hostelTileImage: hostelTileImage,
              hostelTileName: hostelTileName,
              hostelTileLocation: hostelTileLocation,
              hostelTileRent: hostelTileRent),
          const SizedBox(
            height: 16,
          ),
          const AllHostelTile(
              hostelTileImage: 'images/hostel4.png',
              hostelTileName: 'Camille & Marie Hostels',
              hostelTileLocation: 'Tantra Hills, Accra',
              hostelTileRent: '850'),
          const SizedBox(
            height: 16,
          ),
          AllHostelTile(
              hostelTileImage: 'images/hostel4.png',
              hostelTileName: 'Royal Atlantic Hostel',
              hostelTileLocation: hostelTileLocation,
              hostelTileRent: hostelTileRent),
          const SizedBox(
            height: 16,
          ),
          AllHostelTile(
              hostelTileImage: 'images/hostel4.png',
              hostelTileName: hostelTileName,
              hostelTileLocation: hostelTileLocation,
              hostelTileRent: hostelTileRent)
        ],
      ),
    );
  }
}
