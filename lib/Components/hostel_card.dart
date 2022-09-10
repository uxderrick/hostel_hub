import 'package:flutter/material.dart';

class HostelCard extends StatelessWidget {
  final String hostelImage;
  final String hostelName;
  final String hostelLocation;
  final String hostelRent;
  const HostelCard({
    Key? key,
    required this.hostelImage,
    required this.hostelName,
    required this.hostelLocation,
    required this.hostelRent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    image: AssetImage(hostelImage)),
                borderRadius: BorderRadius.circular(4)),
            height: 120,
            width: 260,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hostelName,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 14,
                        color: Color(0xffBAB9BB),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        hostelLocation,
                        style: const TextStyle(color: Color(0xffBAB9BB)),
                      )
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'GHS $hostelRent',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xff732ECC)),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
