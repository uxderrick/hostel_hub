import 'package:flutter/material.dart';
import 'package:hostel_hub/Screens/choose_room.dart';
import 'package:hostel_hub/Screens/hostel_detail_1.dart';
import 'package:hostel_hub/Screens/hostel_detail_2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Components/available_rooms_tile.dart';

class HostelDetail extends StatefulWidget {
  const HostelDetail({super.key});

  @override
  State<HostelDetail> createState() => _HostelDetailState();
}

class _HostelDetailState extends State<HostelDetail> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
                  size: 16,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [HostelDetail1(), HostelDetail2()],
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                  effect: ExpandingDotsEffect(
                      dotColor: Colors.white.withOpacity(0.4),
                      activeDotColor: Colors.white,
                      dotHeight: 4),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Pinky Hostel',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.location_on,
                                            size: 14,
                                            color: Color(0xffBAB9BB),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            'East Legon, Accra',
                                            style: TextStyle(
                                                color: Colors.black54),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 120,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet, sit quam proin auctor tellus, viverra. Ipsum mi tristique urna, tincidunt. Morbi mauris augue bibendum pharetra massa odio tincidunt aliquam. Morbi ut at massa lobortis vestibulum, non diam pretium.',
                            style:
                                TextStyle(color: Colors.black54, height: 1.4),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Divider(
                            color: Colors.black54,
                            thickness: 0.2,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Available Rooms & Rates',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const AvailableRoomListTile(
                                  hostelRent: '300',
                                  numberInRoom: '',
                                ),
                                const AvailableRoomListTile(
                                  hostelRent: '',
                                  numberInRoom: '',
                                ),
                                Column(
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
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const ChooseRoom())));
          },
          child: Container(
              alignment: Alignment.center,
              height: 56,
              width: 144,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(9000)),
              child: const Text(
                'See more rooms',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
