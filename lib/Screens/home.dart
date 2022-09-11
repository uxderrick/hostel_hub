import 'package:flutter/material.dart';
import 'package:hostel_hub/Components/all_hostels_list.dart';
import 'package:hostel_hub/Components/quick_filter_tile.dart';

import '../Components/hostel_list_row_scroll.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          centerTitle: false,
          backgroundColor: const Color(0xff1D6DB1),
          elevation: 0,
          title: const Text(
            'Hello Tracy',
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 19,
                    backgroundImage: AssetImage('images/avatar.png'),
                  ),
                ),
                SizedBox(
                  width: 16,
                )
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 96,
              decoration: const BoxDecoration(
                  color: Color(0xff1D6DB1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.search),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8)),
                        filled: true,
                        fillColor: const Color(0xffEBF6FF),
                        hintText: 'eg: johndoe@mail.com',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Quick Filter',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    child: GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 2,
                                crossAxisSpacing: 8,
                                crossAxisCount: 2,
                                mainAxisSpacing: 8),
                        children: const [
                          QuickFilterTile(
                            tileColor: Color(0xffFFF4E8),
                            textColor: Color(0xffD39047),
                            numberInRoom: '2',
                          ),
                          QuickFilterTile(
                            tileColor: Color(0xffE8FFF1),
                            textColor: Color(0xff3ACB73),
                            numberInRoom: '4',
                          ),
                          QuickFilterTile(
                            tileColor: Color(0xffE8F8FF),
                            textColor: Color(0xff3B95BC),
                            numberInRoom: '6',
                          ),
                          QuickFilterTile(
                            tileColor: Color(0xffFFF3FA),
                            textColor: Color(0xffBC3B81),
                            numberInRoom: '7',
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            const HostelRowScrollList(
              listName: 'Top Rated',
              hostelImage: 'images/hostel1.png',
            ),
            const HostelRowScrollList(
              listName: 'New Hostels',
              hostelImage: 'images/hostel2.png',
            ),
            const HostelTile(
              hostelTileImage: 'images/hostel3.png',
              hostelTileLocation: 'Odwira Street, off Klanaa Street',
              hostelTileName: 'Home Boutique Hostels',
              hostelTileRent: '600',
            )
          ]),
        ),
      ),
    );
  }
}
