import 'package:flutter/material.dart';
import './cocbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(
              height: sw * 0.15,
              child: Text(
                "Clash Of Clans",
                style: TextStyle(
                    fontSize: sw * 0.08,
                    fontFamily: 'cocfont',
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image(image: AssetImage("assets/image/1.png")),
            SizedBox(
              height: sh * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: sh * 0.02, // Responsive top padding
                left: sw * 0.05, // Responsive left padding
                right: sw * 0.05,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: sh * 0.05),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const Cocbar()));
                      },
                      child: Stack(
                        clipBehavior:
                            Clip.none, // Allows the image to overflow outside
                        children: [
                          // Card with rounded corners
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            elevation: 4,
                            color: Color(0xFFFFF4CF),
                            child: SizedBox(
                              width: sw * 0.4,
                              height: sh * 0.24,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ), // Adjust to fit image positioning
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Hero(
                                      tag: "tage2",
                                      child: Text(
                                        'Barbarian',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'cocfont',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Image outside the card
                          Positioned(
                            top:
                                -10, // Controls the vertical position of the image
                            right: 20,
                            child: Hero(
                              tag: 'tage1',
                              child: Image.asset(
                                'assets/image/6.png',
                                height: 180,
                                width: 180,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 20),
                    child: Stack(
                      clipBehavior:
                          Clip.none, // Allows the image to overflow outside
                      children: [
                        // Card with rounded corners
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 4,
                          color: Color(0xFFFFBDB8),
                          child: SizedBox(
                            width: sw * 0.4,
                            height: sh * 0.24,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  height: 40,
                                ), // Adjust to fit image positioning
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Balloon',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'cocfont',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Image outside the card
                        Positioned(
                          top: -20,
                          left: 30,
                          child: Image.asset(
                            'assets/image/7.png',
                            height: 180,
                            width: 180,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Stack(
                      clipBehavior:
                          Clip.none, // Allows the image to overflow outside
                      children: [
                        // Card with rounded corners
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 4,
                          color: Color(0xFFC6FFC5),
                          child: SizedBox(
                            width: sw * 0.4,
                            height: sh * 0.24,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  height: 40,
                                ), // Adjust to fit image positioning
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Baby Dragon',
                                    style: TextStyle(
                                        fontSize: 13.98,
                                        fontFamily: 'cocfont',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Image outside the card
                        Positioned(
                          top:
                              -20, // Controls the vertical position of the image
                          left: 2,
                          child: Image.asset(
                            'assets/image/8.png',
                            height: 180,
                            width: 180,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 20),
                    child: Stack(
                      clipBehavior:
                          Clip.none, // Allows the image to overflow outside
                      children: [
                        // Card with rounded corners
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 4,
                          color: Color(0xFFCACBFF),
                          child: SizedBox(
                            width: sw * 0.4,
                            height: sh * 0.24,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  height: 40,
                                ), // Adjust to fit image positioning
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Dragon',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'cocfont',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Image outside the card
                        Positioned(
                          top: -25,
                          right: 1,
                          child: Image.asset(
                            'assets/image/9.png',
                            height: 180,
                            width: 180,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
