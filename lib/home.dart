import 'package:explore_galaxies/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List titles = [
    'All',
    'Planets',
    'Stars',
    'Galaxies',
    'Nebulas',
    'More',
    'More',
  ];
  int SelectedIndex = 0;

  List itemList = [
    {
      'image': 'assets/images/earth2.png',
      'title': 'Mother Earth',
      'text':
          'Earth is the third planet from the sun and the only known planet to support life. It has a diameter of 12,742 km.',
      'color': Color(0xffB6F3FF),
      'icon': 'assets/icons/Frameblue.png',
    },
    {
      'image': 'assets/images/Venus2.png',
      'title': 'The Red Planet',
      'text':
          'Mars is the fourth planet from the sun and the second-smallest planet in the Solar System. It is often described as the "Red Planet".',
      'color': Color(0xffF6E3C4),
      'icon': 'assets/icons/Frameorange.png',
    },
    {
      'image': 'assets/images/purple3.png',
      'title': 'Uranus',
      'text':
          'Uranus is the seventh planet from the sun and the third-largest planet in the Solar System.',
      'color': Color(0xffDCC7FF),
      'icon': 'assets/icons/Framepurple.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                  top: 200,
                  left: 30,
                  child: Image.asset('assets/images/bigStar.png')),
              Positioned(
                  top: 200,
                  left: 200,
                  child: Image.asset('assets/images/bigStar.png')),
              Positioned(
                  top: 220,
                  right: 20,
                  child: Image.asset('assets/images/bigStar.png')),
              Positioned(
                  top: 300,
                  left: 210,
                  child: Image.asset('assets/images/smallStar.png')),

                   Positioned(
                  top: 520,
                  left: 50,
                  child: Image.asset('assets/images/bigStar.png'),
                  ),

                 Positioned(
                  top: 550,
                  left: 180,
                  child: Image.asset('assets/images/bigStar.png'),
                  ),

                 Positioned(
                  top: 520,
                  left: 250 ,
                  child: Image.asset('assets/images/smallStar.png'),
                  ),

                Positioned(
                  top: 560,
                  right: 20,
                  child: Image.asset('assets/images/smallStar.png'),
                  ),

                    Positioned(
                  top: 650,
                  left: 20,
                  child: Image.asset('assets/images/bigStar.png'),
                  ),

              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 21, top: 56),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 352,
                            child: TextField(
                              style:const TextStyle(color: Color(0xffB8B8B8)),
                              decoration: InputDecoration(
                                  prefixIcon:
                                      Image.asset('assets/icons/Vector.png'),
                                  hintText: 'Search for planets and stars',
                                  hintStyle:
                                      const TextStyle(color: Color(0xffB8B8B8)),
                                  fillColor: const Color(0xff161616),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none)),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, top: 20),
                        child: SizedBox(
                          height: 50,
                          child: ListView.builder(
                              itemCount: titles.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      SelectedIndex = index;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: index == SelectedIndex
                                        ? Container(
                                            width: 67,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: const Color(0xffB8B8B8))),
                                            child: Center(
                                              child: Text(
                                                titles[index],
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          )
                                        : Container(
                                            width: 67,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: const Color(0xff696969))),
                                            child: Center(
                                              child: Text(
                                                titles[index],
                                                style: const TextStyle(
                                                  color: Color(0xff696969),
                                                ),
                                              ),
                                            ),
                                          ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 320,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(top: 60),
                          itemCount: itemList.length,
                          itemBuilder: (context, index) {
                            final item = itemList[index];
                            return Padding(
                              padding:
                                  EdgeInsets.only(left: index == 0 ? 0 : 20),
                              child: GestureDetector(
                                 onTap: (){
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => Details(
                                              title: item['title'] as String,
                                              text: item['text'] as String,
                                              image: item['image'] as String,
                                              color: item['color'] as Color,
                                            ),
                                          ),
                                        );
                                      },
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: 185,
                                      height: 236,
                                      decoration: BoxDecoration(
                                        color: item['color'] as Color,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, top: 90, right: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item['title'] as String,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              item['text'] as String,
                                              style: const TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: -70,
                                      left: -25,
                                      child: Image.asset(
                                        item['image'] as String,
                                        width: 200,
                                        height: 200,
                                      ),
                                    ),
                                    Positioned(
                                      top: 150,
                                      left: -15,
                                      child: Image.asset(
                                        item['icon'] as String,
                                        width: 200,
                                        height: 200,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    const SizedBox(
                        height: 30,
                      ),
                     const Row(
                        children: [
                          Text(
                            'Articles',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                     const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Row(
                          children: [
                            Container(
                              width: 118,
                              height: 160,
                              decoration: const BoxDecoration(
                                  color: Color(0xffDCC7FF),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20))),
                              child: Center(
                                  child: Image.asset(
                                'assets/images/purplesaturn.png',
                              )),
                            ),
                            Container(
                              width: 235,
                              height: 160,
                              decoration: const BoxDecoration(
                                  color: Color(0xff161616),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  const Column(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(
                                            top: 25, left: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Ice giant - Uranus',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 2, left: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Uranus is a fascinating planet \nthat is often overlooked due to \nits distance from Earth and lack \nof visible features. ',
                                              style: TextStyle(
                                                color: Color(0xffBBBBBB),
                                                fontSize: 12,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 10, left: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              'By Georges Jarrouj  |  06 Jun 2024 ',
                                              style: TextStyle(
                                                color: Color(0xff787878),
                                                fontSize: 8,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                      top: 120,
                                      right: 0,
                                      child: Image.asset(
                                          'assets/icons/Framepurple.png')),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
     
    );
  }
}


