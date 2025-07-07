import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LayoutWidgetStarted extends StatelessWidget {
  const LayoutWidgetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: ClipPath(
            clipper: BottomWaveClipper(),
            child: Container(color: Color(0XFF5b913b)),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                width: 400,
                child: Text(
                  "Complete your grocery need easily",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 45, vertical: 18),
                    decoration: BoxDecoration(
                      color: Color(0XFF5b913b),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Row(
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20),
                        FaIcon(
                          FontAwesomeIcons.arrowRightLong,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LayoutWidgetHome extends StatelessWidget {
  const LayoutWidgetHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
