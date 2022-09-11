import 'package:flutter/material.dart';
import 'package:hostel_hub/Components/available_rooms_tile.dart';

class AvailableBlockRow extends StatelessWidget {
  const AvailableBlockRow({
    Key? key,
    required String hostelRent,
    required String numberInRoom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        AvailableRoomListTile(
          hostelRent: '490',
          numberInRoom: '5',
        ),
      ],
    );
  }
}
