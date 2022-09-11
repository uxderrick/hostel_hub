import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

import '../Components/available_block_tile.dart';

class ChooseRoom extends StatefulWidget {
  const ChooseRoom({super.key});

  @override
  State<ChooseRoom> createState() => _ChooseRoomState();
}

class _ChooseRoomState extends State<ChooseRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: GestureDetector(
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 24,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Pinky Hostel'),
      ),
      body: ContainedTabBarView(
        tabs: [
          Container(
            alignment: Alignment.center,
            height: 32,
            child: const Text('1 in a room'),
          ),
          Container(
            alignment: Alignment.center,
            height: 32,
            child: const Text('2 in a room'),
          ),
          Container(
            alignment: Alignment.center,
            height: 32,
            child: const Text('3 in a room'),
          )
        ],
        tabBarProperties: TabBarProperties(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          indicator: ContainerTabIndicator(
            radius: BorderRadius.circular(8000.0),
            color: Colors.blue,
          ),
          labelColor: Colors.white,
          unselectedLabelColor: const Color(0xff8A8A8A),
        ),
        views: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const [
                AvailableBlockRow(
                  hostelRent: '400',
                  numberInRoom: '1',
                ),
                AvailableBlockRow(
                  hostelRent: '400',
                  numberInRoom: '1',
                ),
                AvailableBlockRow(
                  hostelRent: '400',
                  numberInRoom: '1',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const [
                AvailableBlockRow(
                  hostelRent: '400',
                  numberInRoom: '1',
                ),
                AvailableBlockRow(
                  hostelRent: '400',
                  numberInRoom: '1',
                ),
                AvailableBlockRow(
                  hostelRent: '400',
                  numberInRoom: '1',
                ),
                AvailableBlockRow(
                  hostelRent: '400',
                  numberInRoom: '1',
                ),
                AvailableBlockRow(
                  hostelRent: '400',
                  numberInRoom: '1',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const [
                AvailableBlockRow(
                  hostelRent: '400',
                  numberInRoom: '1',
                ),
                AvailableBlockRow(
                  hostelRent: '400',
                  numberInRoom: '1',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
