import 'package:explore_galaxies/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Column(
              children: [
              SizedBox(
                height: 81,
              ),
               Row(
                children: [
                  Text(
                    'Explore the \nUniverse',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 12,
              ),
               Row(
                children: [
                  Text(
                    'Journey through the cosmos\nwith our space app',
                    style: TextStyle(color: Color(0xffB4B4B4), fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
             
            ]),
             Positioned(
              top: 310,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            
                            MaterialPageRoute(
                                builder: (context) =>
                                    const Pages()));
                      },
                      child: Container(
                        width: 174,
                        height: 47,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            Positioned(
                top: 400,
                left: 30,
                child: Image.asset('assets/images/smallStar.png')),
            Positioned(
                top: 337,
                left: -43,
                child: Image.asset(
                  'assets/images/Earth.png',
                  width: 485,
                  height: 485,
                )),
            Positioned(
                top: 396,
                left: -37,
                child: Image.asset(
                  'assets/images/purple.png',
                  width: 181,
                  height: 181,
                )),
            Positioned(
                top: 687,
                left: -12,
                child: Image.asset(
                  'assets/images/uranus.png',
                  width: 196,
                  height: 170,
                )),
            Positioned(
              top: 560,
              left: 160,
              child: Opacity(
                opacity: 0.7, // 70% opacity
                child: Image.asset(
                  'assets/images/Mercury.png',
                  width: 210,
                  height: 373,
                ),
              ),
            ),

              Positioned(
                top: 316,
                left: 207,
                child: Image.asset(
                  'assets/images/Venus.png',
                  width: 184,
                  height: 184,
                )),

                 Positioned(
                top: 440,
                left: 157,
                child: Image.asset(
                  'assets/images/bigStar.png',
                  width: 7,
                  height: 7,
                )),

                  Positioned(
                top: 563,
                left: 348,
                child: Image.asset(
                  'assets/images/bigStar.png',
                  width: 7,
                  height: 7,
                )),

                   Positioned(
                top: 630,
                left: 28,
                child: Image.asset(
                  'assets/images/bigStar.png',
                  width: 4,
                  height: 4,
                )),

                     Positioned(
                top: 450,
                left: 360,
                child: Image.asset(
                  'assets/images/bigStar.png',
                  width: 4,
                  height: 4,
                )),

                     Positioned(
                top: 700,
                left: 320,
                child: Image.asset(
                  'assets/images/bigStar.png',
                  width: 4,
                  height: 4,
                )),

                 Positioned(
                top: 800,
                left: 200,
                child: Image.asset(
                  'assets/images/bigStar.png',
                  width: 7,
                  height: 7,
                )),

                 Positioned(
                top: 820,
                left: 100,
                child: Image.asset(
                  'assets/images/bigStar.png',
                  width: 4,
                  height: 4,
                )),

                  Positioned(
                top: 730,
                left: 10,
                child: Image.asset(
                  'assets/images/bigStar.png',
                  width: 7,
                  height: 7,
                )
                ),
          ],
        ),
      ),
    );
  }
}
