import 'package:flutter/material.dart';

class CocCard extends StatelessWidget {
  const CocCard({super.key, this.t, this.r, this.l});
  final t;
  final r;
  final l;
  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final sh = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Stack(
        clipBehavior: Clip.none, // Allows the image to overflow outside
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
                  SizedBox(
                    height: sh * 0.1,
                  ), // Adjust to fit image positioning
                  Padding(
                    padding: const EdgeInsets.all(15.0),
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
                ],
              ),
            ),
          ),
          // Image outside the card
          Positioned(
            top: -t, // Controls the vertical position of the image
            right: r,
            left: l,
            child: Image.asset(
              'assets/image/6.png',
              height: 180,
              width: 180,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    ));
  }
}
