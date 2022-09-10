import 'package:flutter/material.dart';

class AvailableRoomRow extends StatelessWidget {
  final String numberInRoom;
  final String hostelRent;
  const AvailableRoomRow({
    Key? key,
    required this.numberInRoom,
    required this.hostelRent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$numberInRoom in a room'),
            const SizedBox(
              height: 4,
            ),
            Text(
              'GHS $hostelRent',
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffDBEEFF),
                borderRadius: BorderRadius.circular(4)),
            height: 40,
            width: 120,
            child: const Text(
              'Book This Room',
              style: TextStyle(fontSize: 12, color: Color(0xff1D6DB1)),
            ))
      ],
    );
  }
}

class AvailableRoomListTile extends StatelessWidget {
  const AvailableRoomListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 16,
        ),
        AvailableRoomRow(
          hostelRent: '490',
          numberInRoom: '5',
        ),
        SizedBox(
          height: 16,
        ),
        Divider(
          color: Colors.black54,
          thickness: 0.2,
        ),
      ],
    );
  }
}
