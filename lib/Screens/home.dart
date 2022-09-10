import 'package:flutter/material.dart';
import 'package:hostel_hub/Screens/quick_filter_tile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Container(
                  height: 180,
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
                        ),
                        QuickFilterTile(
                          tileColor: Color(0xffE8FFF1),
                          textColor: Color(0xff3ACB73),
                        ),
                        QuickFilterTile(
                          tileColor: Color(0xffE8F8FF),
                          textColor: Color(0xff3B95BC),
                        ),
                        QuickFilterTile(
                          tileColor: Color(0xffFFF3FA),
                          textColor: Color(0xffBC3B81),
                        )
                      ]),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: const [
                    Text(
                      'Top Rated',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Text(
                      'See more',
                      style: TextStyle(fontSize: 16, color: Color(0xff1D6DB1)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
