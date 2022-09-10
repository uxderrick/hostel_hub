import 'package:flutter/material.dart';

class AllHostelTile extends StatelessWidget {
  const AllHostelTile({
    Key? key,
    required this.hostelTileImage,
    required this.hostelTileName,
    required this.hostelTileLocation,
    required this.hostelTileRent,
  }) : super(key: key);

  final String hostelTileImage;
  final String hostelTileName;
  final String hostelTileLocation;
  final String hostelTileRent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    image: AssetImage(hostelTileImage)),
                borderRadius: BorderRadius.circular(4)),
            height: 120,
            width: 120,
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hostelTileName,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
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
              const SizedBox(
                height: 8,
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
                    hostelTileLocation,
                    style: const TextStyle(color: Color(0xffBAB9BB)),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'GHS $hostelTileRent',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff732ECC)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
