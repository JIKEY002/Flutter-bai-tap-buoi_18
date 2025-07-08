import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Layout2WidgetExplore extends StatelessWidget {
  const Layout2WidgetExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Color(0xFF1c4255),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Explore',
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Find products easier here",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFe59040),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomCard(text: "Lamp"),
                  SizedBox(height: 20),
                  CustomCard(text: "Car"),
                  SizedBox(height: 20),
                  CustomCard(text: "Plant"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Layout2WidgetHome extends StatelessWidget {
  const Layout2WidgetHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back,",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Samantha William",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 5),
                    child: Icon(Icons.shopping_cart_outlined, size: 25),
                  ),
                  Positioned(
                    right: 5,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFFEFEFEF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: 15,
                        color: Color(0xFFB3B3B3),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Searching Item",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Color(0xFFB3B3B3),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFeb8c3a),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FaIcon(
                  FontAwesomeIcons.sliders,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              ImageHere(
                decoration: BoxDecoration(
                  color: Color(0xFF4a9eb6),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(vertical: 40),
                iconSize: 70,
                textSize: 16,
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Dot(color: Color(0xFFeb8c3a), size: 5),
                  SizedBox(width: 10),
                  Dot(color: Color(0xFFe8e8e8), size: 5),
                  SizedBox(width: 10),
                  Dot(color: Color(0xFFe8e8e8), size: 5),
                  SizedBox(width: 10),
                  Dot(color: Color(0xFFe8e8e8), size: 5),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 200,
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 15,
              ),
              children: [
                Category(
                  icon: FaIcon(
                    FontAwesomeIcons.music,
                    size: 15,
                    color: Color(0xFF4a9eb6),
                  ),
                  text: "Music",
                ),
                Category(
                  icon: FaIcon(
                    FontAwesomeIcons.city,
                    size: 15,
                    color: Color(0xFF4a9eb6),
                  ),
                  text: "Property",
                ),
                Category(
                  icon: FaIcon(
                    FontAwesomeIcons.gamepad,
                    size: 15,
                    color: Color(0xFF4a9eb6),
                  ),
                  text: "Game",
                ),
                Category(
                  icon: FaIcon(
                    FontAwesomeIcons.mobileScreen,
                    size: 15,
                    color: Color(0xFF4a9eb6),
                  ),
                  text: "Gadget",
                ),
                Category(
                  icon: FaIcon(
                    FontAwesomeIcons.display,
                    size: 15,
                    color: Color(0xFF4a9eb6),
                  ),
                  text: "Electronic",
                ),
                Category(
                  icon: FaIcon(
                    FontAwesomeIcons.scissors,
                    size: 15,
                    color: Color(0xFF4a9eb6),
                  ),
                  text: "Property",
                ),
                Category(
                  icon: FaIcon(
                    FontAwesomeIcons.truck,
                    size: 15,
                    color: Color(0xFF4a9eb6),
                  ),
                  text: "Game",
                ),
                Category(
                  icon: FaIcon(
                    FontAwesomeIcons.book,
                    size: 15,
                    color: Color(0xFF4a9eb6),
                  ),
                  text: "Book",
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Seller",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 16,
                  color: Color(0xFFeb8c3a),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardBestSell(text: "Plant"),
              CardBestSell(text: "Lamp"),
              CardBestSell(text: "Chal"),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String text;

  const CustomCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageHere(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xFFf7f7f7),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ImageHere extends StatelessWidget {
  final BoxDecoration? decoration;
  final EdgeInsets? padding;
  final double? iconSize;
  final double? textSize;

  const ImageHere({
    super.key,
    this.decoration,
    this.padding,
    this.iconSize,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          decoration ??
          BoxDecoration(
            color: Color(0xFF4a9eb6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: padding ?? EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                FaIcon(
                  FontAwesomeIcons.images,
                  color: Colors.white,
                  size: iconSize ?? 70,
                ),
                Text(
                  "Image Here",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,
                    fontSize: textSize ?? 14,
                    fontWeight: FontWeight.w600,
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

class Dot extends StatelessWidget {
  final Color color;
  final double size;
  const Dot({super.key, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(size),
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}

class Category extends StatelessWidget {
  final Widget icon;
  final String text;

  const Category({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Color(0xFFf7f7f7),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Color.fromARGB(50, 74, 159, 182),
              width: 1,
            ),
          ),
          child: icon,
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class CardBestSell extends StatelessWidget {
  final String text;

  const CardBestSell({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageHere(
          decoration: BoxDecoration(
            color: Color(0xFF4a9eb6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          padding: EdgeInsets.all(25),
          iconSize: 30,
          textSize: 10,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFf7f7f7),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      Icon(Icons.star, color: Colors.amber, size: 14),
                    ],
                  ),
                  SizedBox(width: 5),
                  Text(
                    "5.0",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
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
