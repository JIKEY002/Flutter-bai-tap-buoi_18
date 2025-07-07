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
          child: Container(
            color: Color(0xFFf7f7f7),
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 45,
                        vertical: 18,
                      ),
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
        ),
      ],
    );
  }
}

class LayoutWidgetHome extends StatelessWidget {
  const LayoutWidgetHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFf7f7f7),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Balance",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "\$1,700.00",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0XFF5b913b),
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFF5b913b),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  width: 250,
                  child: Text(
                    "Buy Orange 10 Kg Get discount 25%",
                    style: TextStyle(
                      color: Color(0xFFf3fff3),
                      fontFamily: "Montserrat",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 30),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "For You",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          SizedBox(height: 30),
          Container(
            height: 400,
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: [
                BoxCustom(
                  icon: FaIcon(
                    FontAwesomeIcons.solidLemon,
                    size: 60,
                    color: Colors.yellow,
                  ),
                  text: Text(
                    "Fruit",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                BoxCustom(
                  icon: FaIcon(
                    FontAwesomeIcons.seedling,
                    size: 60,
                    color: Colors.green,
                  ),
                  text: Text(
                    "Vegetable",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                BoxCustom(
                  icon: FaIcon(
                    FontAwesomeIcons.cookie,
                    size: 60,
                    color: Colors.brown,
                  ),
                  text: Text(
                    "Cookies",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                BoxCustom(
                  icon: FaIcon(
                    FontAwesomeIcons.drumstickBite,
                    size: 60,
                    color: Colors.red,
                  ),
                  text: Text(
                    "Meat",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BoxCustom extends StatelessWidget {
  final Widget icon;
  final Widget text;

  const BoxCustom({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [icon, SizedBox(height: 20), text],
      ),
    );
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
