import 'package:flutter/material.dart';

class Cocbar extends StatelessWidget {
  const Cocbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFF4CF),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                            top: 0,
                            bottom: -80,
                            child: Hero(
                              transitionOnUserGestures: true,
                              tag: 'tage1',
                              child: Image(
                                image: AssetImage('assets/image/4.png'),
                                fit: BoxFit.cover,
                                height: 400,
                              ),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, right: 30),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Hero(
                            tag: "tage2",
                            child: Text(
                              "Barbarian",
                              style: TextStyle(
                                fontFamily: 'cocfont',
                                color: Colors.black,
                                fontSize: 23,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      )),
    );
  }
}
