import 'package:flutter/material.dart';
import 'package:hostel_hub/Components/hostel_card.dart';
import 'package:hostel_hub/Screens/hostel_detail_screen.dart';

class HostelRowScrollList extends StatelessWidget {
  final String listName;
  final String hostelImage;
  const HostelRowScrollList({
    Key? key,
    required this.listName,
    required this.hostelImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text(
                listName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const Text(
                'See more',
                style: TextStyle(fontSize: 16, color: Color(0xff1D6DB1)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              const SizedBox(
                width: 16,
              ),
              GestureDetector(
                child: HostelCard(
                  hostelImage: hostelImage,
                  hostelLocation: 'East Legon, Accra',
                  hostelName: 'Pinky Hostel',
                  hostelRent: '400',
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HostelDetail(),
                      ));
                },
              ),
              const SizedBox(
                width: 24,
              ),
              GestureDetector(
                  child: HostelCard(
                    hostelImage: hostelImage,
                    hostelLocation: 'Tantra Hills, Accra',
                    hostelName: 'Camille & Marie Hostels',
                    hostelRent: '750',
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HostelDetail(),
                        ));
                  }),
              const SizedBox(
                width: 16,
              )
            ],
          ),
        )
      ],
    );
  }
}
