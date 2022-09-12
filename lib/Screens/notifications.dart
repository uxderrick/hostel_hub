import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Navigator.of(context).userGestureInProgress) {
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          foregroundColor: Colors.black,
          title: SizedBox(
            child: Row(
              children: const [
                Icon(Icons.notifications),
                SizedBox(
                  width: 8,
                ),
                Text('Notifications'),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              NotificationTile(
                date: 'Today',
              ),
              SizedBox(
                height: 12,
              ),
              NotificationTile(
                date: '22/09/2022',
              ),
              SizedBox(
                height: 12,
              ),
              NotificationTile(
                date: '01/03/2020',
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String date;
  const NotificationTile({
    Key? key,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(date, style: const TextStyle(color: Color(0xff1D6DB1))),
            const Text(
              '10:45 AM',
              style: TextStyle(color: Color(0xff4C4851)),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Text('Payment Confirmation for Room No B-011',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        const SizedBox(
          height: 8,
        ),
        const Text(
            'You have made payment for GHS 4,000.00 for Blue Block Room No B-011. A copy of the receipt has been sent to your email.',
            style: TextStyle(color: Color(0xff8A8A8A))),
        const SizedBox(
          height: 8,
        ),
        const Divider()
      ],
    );
  }
}
