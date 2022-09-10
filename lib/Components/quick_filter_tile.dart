import 'package:flutter/material.dart';

class QuickFilterTile extends StatelessWidget {
  final Color tileColor;
  final Color textColor;
  final String numberInRoom;
  const QuickFilterTile({
    Key? key,
    required this.tileColor,
    required this.textColor,
    required this.numberInRoom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: tileColor, borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Icon(
            Icons.person,
            color: textColor,
            size: 20,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            '$numberInRoom in a room',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 16, color: textColor),
          ),
          const Spacer(),
          Icon(Icons.chevron_right, color: textColor)
        ],
      ),
    );
  }
}
