import 'dart:ffi';
import 'package:assignment/Animal.dart';
import 'package:assignment/Asthetics.dart';
import 'package:assignment/City.dart';
import 'package:assignment/Travel.dart';
import 'package:assignment/flower.dart';
import 'package:assignment/road.dart';
import 'package:assignment/sky.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';


//Mood landscape page
class ModeLandScape extends StatefulWidget {
  const ModeLandScape({super.key});

  @override
  State<ModeLandScape> createState() => _ModeLandScapeState();
}

class _ModeLandScapeState extends State<ModeLandScape> {
  @override
  Widget build(BuildContext context) {
    return const ModeLandScapeScreen();
  }
}

class ModeLandScapeScreen extends StatelessWidget {
  const ModeLandScapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 44, 171, 0),
        centerTitle: true,
        title: const Text(
          'Mood',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [],
            iconColor: Colors.white,
            iconSize: 32,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: 298,
                margin: const EdgeInsets.only(top: 20.00, left: 20.00),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.00),
                  image: DecorationImage(
                    image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/031/586/358/small/many-men-experience-the-widespread-phenomenon-of-loneliness-in-society-ai-generated-photo.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.50),
                      spreadRadius: 0,
                      blurRadius: 35,
                      offset: const Offset(5, 12),
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 20.00),
                        child: Text('Mood',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 00.00),
                        child: Text('Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.00),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 51,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2CAB00),
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.5),
                                elevation: 15,
                              ),
                              child: const Text("See More")),
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.00, bottom: 20.00),
                        child: Text(
                          "Suggestions",
                          style: TextStyle(
                              color: Color(0xFF2CAB00),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1008737/pexels-photo-1008737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Dawn",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1687341/pexels-photo-1687341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Leaves",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Asthetics landscape page


class AstheticsLandScape extends StatefulWidget {
  const AstheticsLandScape({super.key});

  @override
  State<AstheticsLandScape> createState() => _AstheticsLandScapeState();
}

class _AstheticsLandScapeState extends State<AstheticsLandScape> {
  @override
  Widget build(BuildContext context) {
    return const AstheticsLandScapeScreen();
  }
}

class AstheticsLandScapeScreen extends StatelessWidget {
  const AstheticsLandScapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 44, 171, 0),
        centerTitle: true,
        title: const Text(
          'Mood',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [],
            iconColor: Colors.white,
            iconSize: 32,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: 298,
                margin: const EdgeInsets.only(top: 20.00, left: 20.00),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.00),
                  image: DecorationImage(
                    image: NetworkImage('https://t3.ftcdn.net/jpg/05/59/26/76/360_F_559267615_YXJN99yia1skJPjP6svwwB3dXuK2WaNo.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.50),
                      spreadRadius: 0,
                      blurRadius: 35,
                      offset: const Offset(5, 12),
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 20.00),
                        child: Text('Asthetics',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 00.00),
                        child: Text('Every snapshot tells a story of beauty, tranquility, and creativity. Each carefully curated image captures moments of serenity, elegance, and wonder, inviting you to embark on a journey of visual delight.',
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.00),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 51,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2CAB00),
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.5),
                                elevation: 15,
                              ),
                              child: const Text("See More")),
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.00, bottom: 20.00),
                        child: Text(
                          "Suggestions",
                          style: TextStyle(
                              color: Color(0xFF2CAB00),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1008737/pexels-photo-1008737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Dawn",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1687341/pexels-photo-1687341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Leaves",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Animal landscape page


class AnimalLandScape extends StatefulWidget {
  const AnimalLandScape({super.key});

  @override
  State<AnimalLandScape> createState() => _AnimalLandScapeState();
}

class _AnimalLandScapeState extends State<AnimalLandScape> {
  @override
  Widget build(BuildContext context) {
    return const AstheticsLandScapeScreen();
  }
}

class AnimalLandScapeScreen extends StatelessWidget {
  const AnimalLandScapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 44, 171, 0),
        centerTitle: true,
        title: const Text(
          'Animal',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [],
            iconColor: Colors.white,
            iconSize: 32,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: 298,
                margin: const EdgeInsets.only(top: 20.00, left: 20.00),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.00),
                  image: DecorationImage(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEqrb3qQN-yQk8mq3eq4bj71hKiNF8SD1R7SFYnjiTVQ&s',
                    ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.50),
                      spreadRadius: 0,
                      blurRadius: 35,
                      offset: const Offset(5, 12),
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 20.00),
                        child: Text('Animal',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 00.00),
                        child: Text('Each picture tells a unique story, offering glimpses into the lives and habitats of these fascinating beings. Whether you\'re an avid nature enthusiast, an animal lover, or simply seeking inspiration from the wonders of the natural world, Animals promises to delight and inspire you with its breathtaking images',
                          textAlign: TextAlign.justify,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.00),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 51,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2CAB00),
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.5),
                                elevation: 15,
                              ),
                              child: const Text("See More")),
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.00, bottom: 20.00),
                        child: Text(
                          "Suggestions",
                          style: TextStyle(
                              color: Color(0xFF2CAB00),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1008737/pexels-photo-1008737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Dawn",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1687341/pexels-photo-1687341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Leaves",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//City landscape page

class CityLandScape extends StatefulWidget {
  const CityLandScape({super.key});

  @override
  State<CityLandScape> createState() => _CityLandScapeState();
}

class _CityLandScapeState extends State<CityLandScape> {
  @override
  Widget build(BuildContext context) {
    return const AstheticsLandScapeScreen();
  }
}

class CityLandScapeScreen extends StatelessWidget {
  const CityLandScapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 44, 171, 0),
        centerTitle: true,
        title: const Text(
          'City',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [],
            iconColor: Colors.white,
            iconSize: 32,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: 298,
                margin: const EdgeInsets.only(top: 20.00, left: 20.00),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.00),
                  image: DecorationImage(
                    image: NetworkImage('https://as2.ftcdn.net/v2/jpg/01/81/07/91/1000_F_181079136_irl2A25Clc5Bi2Lwa3Q9kJvF0RlFv8tU.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.50),
                      spreadRadius: 0,
                      blurRadius: 35,
                      offset: const Offset(5, 12),
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 20.00),
                        child: Text('City',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 00.00),
                        child: Text('Each picture tells a unique story, offering glimpses into the lives and habitats of these fascinating beings. Whether you\'re an avid nature enthusiast, an animal lover, or simply seeking inspiration from the wonders of the natural world, Animals promises to delight and inspire you with its breathtaking images',
                          textAlign: TextAlign.justify,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.00),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 51,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2CAB00),
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.5),
                                elevation: 15,
                              ),
                              child: const Text("See More")),
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.00, bottom: 20.00),
                        child: Text(
                          "Suggestions",
                          style: TextStyle(
                              color: Color(0xFF2CAB00),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1008737/pexels-photo-1008737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Dawn",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1687341/pexels-photo-1687341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Leaves",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


//Travel landscape page

class TravelLandScape extends StatefulWidget {
  const TravelLandScape({super.key});

  @override
  State<TravelLandScape> createState() => _TravelLandScapeState();
}

class _TravelLandScapeState extends State<TravelLandScape> {
  @override
  Widget build(BuildContext context) {
    return const AstheticsLandScapeScreen();
  }
}

class TravelLandScapeScreen extends StatelessWidget {
  const TravelLandScapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 44, 171, 0),
        centerTitle: true,
        title: const Text(
          'Travel',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [],
            iconColor: Colors.white,
            iconSize: 32,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: 298,
                margin: const EdgeInsets.only(top: 20.00, left: 20.00),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.00),
                  image: DecorationImage(
                    image: NetworkImage('https://www.forbes.com/advisor/wp-content/uploads/2023/07/travel-insurance-woman-on-boat.jpeg.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.50),
                      spreadRadius: 0,
                      blurRadius: 35,
                      offset: const Offset(5, 12),
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 20.00),
                        child: Text('Travel',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 00.00),
                        child: Text('Each picture tells a unique story, offering glimpses into the lives and habitats of these fascinating beings. Whether you\'re an avid nature enthusiast, an animal lover, or simply seeking inspiration from the wonders of the natural world, Animals promises to delight and inspire you with its breathtaking images',
                          textAlign: TextAlign.justify,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.00),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 51,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2CAB00),
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.5),
                                elevation: 15,
                              ),
                              child: const Text("See More")),
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.00, bottom: 20.00),
                        child: Text(
                          "Suggestions",
                          style: TextStyle(
                              color: Color(0xFF2CAB00),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1008737/pexels-photo-1008737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Dawn",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1687341/pexels-photo-1687341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Leaves",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Sky landscape page

class SkyLandScape extends StatefulWidget {
  const SkyLandScape({super.key});

  @override
  State<SkyLandScape> createState() => _SkyLandScapeState();
}

class _SkyLandScapeState extends State<SkyLandScape> {
  @override
  Widget build(BuildContext context) {
    return const AstheticsLandScapeScreen();
  }
}

class SkyLandScapeScreen extends StatelessWidget {
  const SkyLandScapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 44, 171, 0),
        centerTitle: true,
        title: const Text(
          'Sky',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [],
            iconColor: Colors.white,
            iconSize: 32,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: 298,
                margin: const EdgeInsets.only(top: 20.00, left: 20.00),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.00),
                  image: DecorationImage(
                    image: NetworkImage('https://images.pexels.com/photos/1048283/pexels-photo-1048283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.50),
                      spreadRadius: 0,
                      blurRadius: 35,
                      offset: const Offset(5, 12),
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 20.00),
                        child: Text('Sky',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 00.00),
                        child: Text('Each picture tells a unique story, offering glimpses into the lives and habitats of these fascinating beings. Whether you\'re an avid nature enthusiast, an animal lover, or simply seeking inspiration from the wonders of the natural world, Animals promises to delight and inspire you with its breathtaking images',
                          textAlign: TextAlign.justify,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.00),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 51,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2CAB00),
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.5),
                                elevation: 15,
                              ),
                              child: const Text("See More")),
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.00, bottom: 20.00),
                        child: Text(
                          "Suggestions",
                          style: TextStyle(
                              color: Color(0xFF2CAB00),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1008737/pexels-photo-1008737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Dawn",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1687341/pexels-photo-1687341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Leaves",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Road landscape page

class RoadLandScape extends StatefulWidget {
  const RoadLandScape({super.key});

  @override
  State<RoadLandScape> createState() => _RoadLandScapeState();
}

class _RoadLandScapeState extends State<RoadLandScape> {
  @override
  Widget build(BuildContext context) {
    return const AstheticsLandScapeScreen();
  }
}

class RoadLandScapeScreen extends StatelessWidget {
  const RoadLandScapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 44, 171, 0),
        centerTitle: true,
        title: const Text(
          'Road',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [],
            iconColor: Colors.white,
            iconSize: 32,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: 298,
                margin: const EdgeInsets.only(top: 20.00, left: 20.00),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.00),
                  image: DecorationImage(
                    image: NetworkImage('https://www.popsci.com/uploads/2019/04/22/RACMJSXXIK7BFWBEPV5KGO6TNA.jpg?auto=webp&width=1440&height=865.6875'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.50),
                      spreadRadius: 0,
                      blurRadius: 35,
                      offset: const Offset(5, 12),
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 20.00),
                        child: Text('Road',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 00.00),
                        child: Text('Each picture tells a unique story, offering glimpses into the lives and habitats of these fascinating beings. Whether you\'re an avid nature enthusiast, an animal lover, or simply seeking inspiration from the wonders of the natural world, Animals promises to delight and inspire you with its breathtaking images',
                          textAlign: TextAlign.justify,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.00),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 51,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2CAB00),
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.5),
                                elevation: 15,
                              ),
                              child: const Text("See More")),
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.00, bottom: 20.00),
                        child: Text(
                          "Suggestions",
                          style: TextStyle(
                              color: Color(0xFF2CAB00),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1008737/pexels-photo-1008737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Dawn",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1687341/pexels-photo-1687341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Leaves",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Flower landscape page

class FlowerLandScape extends StatefulWidget {
  const FlowerLandScape({super.key});

  @override
  State<FlowerLandScape> createState() => _FlowerLandScapeState();
}

class _FlowerLandScapeState extends State<FlowerLandScape> {
  @override
  Widget build(BuildContext context) {
    return const FlowerLandScapeScreen();
  }
}

class FlowerLandScapeScreen extends StatelessWidget {
  const FlowerLandScapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 44, 171, 0),
        centerTitle: true,
        title: const Text(
          'Flower',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [],
            iconColor: Colors.white,
            iconSize: 32,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: 298,
                margin: const EdgeInsets.only(top: 20.00, left: 20.00),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.00),
                  image: DecorationImage(
                    image: NetworkImage('https://t3.ftcdn.net/jpg/05/79/87/24/360_F_579872405_LdPJDASOJeW0SQL7V8YC7a9vsvyUwhGP.jpg',),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.50),
                      spreadRadius: 0,
                      blurRadius: 35,
                      offset: const Offset(5, 12),
                      blurStyle: BlurStyle.normal,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 20.00),
                        child: Text('Sky',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.00, vertical: 00.00),
                        child: Text('Each picture tells a unique story, offering glimpses into the lives and habitats of these fascinating beings. Whether you\'re an avid nature enthusiast, an animal lover, or simply seeking inspiration from the wonders of the natural world, Animals promises to delight and inspire you with its breathtaking images',
                          textAlign: TextAlign.justify,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.00),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 51,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2CAB00),
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.5),
                                elevation: 15,
                              ),
                              child: const Text("See More")),
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.00, bottom: 20.00),
                        child: Text(
                          "Suggestions",
                          style: TextStyle(
                              color: Color(0xFF2CAB00),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              letterSpacing: 0.5),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1008737/pexels-photo-1008737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Dawn",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.width * 0.22,
                            margin: const EdgeInsets.only(bottom: 10.00),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: DecorationImage(
                                  image: const NetworkImage(
                                      "https://images.pexels.com/photos/1687341/pexels-photo-1687341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.25),
                                      BlendMode.darken),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.50),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: const Offset(0, 15),
                                    blurStyle: BlurStyle.normal,
                                  )
                                ]),
                            alignment: Alignment.bottomLeft,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              child: Text(
                                "Leaves",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}