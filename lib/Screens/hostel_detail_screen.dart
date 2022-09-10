import 'package:flutter/material.dart';
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
      backgroundColor: Colors.amber,
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
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [HostelDetail1(), HostelDetail2()],
          ),
          Column(
            children: [
              const SizedBox(
                height: 300,
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
                  height: 2 * MediaQuery.of(context).size.height / 3,
                  width: double.infinity,
                  child: Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                style: TextStyle(
                                    color: Colors.black54, height: 1.4),
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
                              Column(
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
                                  ListView(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    children: const [
                                      AvailableRoomListTile(),
                                      AvailableRoomListTile(),
                                      AvailableRoomListTile(),
                                      AvailableRoomListTile(),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
