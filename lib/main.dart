import 'package:assignment/landscap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:assignment/Animal.dart';
import 'package:assignment/City.dart';
import 'package:assignment/Travel.dart';
import 'package:assignment/flower.dart';
import 'package:assignment/road.dart';
import 'package:assignment/sky.dart';
import 'package:assignment/Mode.dart';
import 'package:assignment/Asthetics.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhotoGallery(),
    ),
  );
}

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({Key? key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return _buildPortraitView(context);
        } else {
          return _buildLandscapeView(context);
        }
      },
    );
  }
}

Widget _buildPortraitView(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: Row(
        children: [
          SizedBox(
            width: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                SystemNavigator.pop();
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(10.0),
                ),
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
        'Photo Gallery',
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ModeScreen()),
                  );
                },
                child: Stack(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 30,
                            spreadRadius: 15.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          child: Image.network(
                            'https://static.vecteezy.com/system/resources/thumbnails/031/586/358/small/many-men-experience-the-widespread-phenomenon-of-loneliness-in-society-ai-generated-photo.jpg',
                            fit: BoxFit.fill,
                          ),
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 17.0,
                      left: 23.0,
                      child: Text(
                        'Mode',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Apply shadow using DecoratedBox with DecorationList

              const SizedBox(width: 20),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AstheticsScreen()),
                  );
                },
                child: Stack(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 30,
                            spreadRadius: 15.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          child: Image.network(
                            'https://t3.ftcdn.net/jpg/05/59/26/76/360_F_559267615_YXJN99yia1skJPjP6svwwB3dXuK2WaNo.jpg',
                            fit: BoxFit.fill,
                          ),
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 17.0,
                      left: 23.0,
                      child: Text(
                        'Asthetics',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20), // Add spacing between rows
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AnimalScreen()),
                  );
                },
                child: Stack(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 30,
                            spreadRadius: 15.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEqrb3qQN-yQk8mq3eq4bj71hKiNF8SD1R7SFYnjiTVQ&s',
                            fit: BoxFit.fill,
                          ),
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 17.0,
                      left: 23.0,
                      child: Text(
                        'Animal',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Apply shadow using DecoratedBox with DecorationList

              const SizedBox(width: 20),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CityScreen()),
                  );
                },
                child: Stack(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 30,
                            spreadRadius: 15.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          child: Image.network(
                            'https://as2.ftcdn.net/v2/jpg/01/81/07/91/1000_F_181079136_irl2A25Clc5Bi2Lwa3Q9kJvF0RlFv8tU.jpg',
                            fit: BoxFit.fill,
                          ),
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 17.0,
                      left: 23.0,
                      child: Text(
                        'City',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TravelScreen()),
                  );
                },
                child: Stack(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 30,
                            spreadRadius: 15.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          child: Image.network(
                            'https://www.forbes.com/advisor/wp-content/uploads/2023/07/travel-insurance-woman-on-boat.jpeg.jpg',
                            fit: BoxFit.fill,
                          ),
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 17.0,
                      left: 23.0,
                      child: Text(
                        'Travel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Apply shadow using DecoratedBox with DecorationList

              const SizedBox(width: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SkyScreen()),
                  );
                },
                child: Stack(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 30.0,
                            spreadRadius: 15.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          child: Image.network(
                            'https://images.pexels.com/photos/1048283/pexels-photo-1048283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            fit: BoxFit.fill,
                          ),
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 17.0,
                      left: 23.0,
                      child: Text(
                        'Sky',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RoadScreen()),
                  );
                },
                child: Stack(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 30,
                            spreadRadius: 15.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          child: Image.network(
                            'https://www.popsci.com/uploads/2019/04/22/RACMJSXXIK7BFWBEPV5KGO6TNA.jpg?auto=webp&width=1440&height=865.6875',
                            fit: BoxFit.fill,
                          ),
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 17.0,
                      left: 23.0,
                      child: Text(
                        'Road',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Apply shadow using DecoratedBox with DecorationList

              const SizedBox(width: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FlowerScreen()),
                  );
                },
                child: Stack(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.5),
                            blurRadius: 30,
                            spreadRadius: 15.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                          child: Image.network(
                            'https://t3.ftcdn.net/jpg/05/79/87/24/360_F_579872405_LdPJDASOJeW0SQL7V8YC7a9vsvyUwhGP.jpg',
                            fit: BoxFit.fill,
                          ),
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 17.0,
                      left: 23.0,
                      child: Text(
                        'Flower',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildLandscapeView(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: Row(
        children: [
          SizedBox(
            width: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                SystemNavigator.pop();
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(10.0),
                ),
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
        'Photo Gallery',
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
      child: Column(
        children: [
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ModeLandScapeScreen()),
                              );
                            },
                            child: Stack(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        blurRadius: 30,
                                        spreadRadius: 0.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                      child: Image.network(
                                        'https://static.vecteezy.com/system/resources/thumbnails/031/586/358/small/many-men-experience-the-widespread-phenomenon-of-loneliness-in-society-ai-generated-photo.jpg',
                                        fit: BoxFit.fill,
                                      ),
                                      height: 180,
                                      width: 180,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 17.0,
                                  left: 23.0,
                                  child: Text(
                                    'Mood',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                SizedBox(
                  width: 45,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AstheticsLandScapeScreen()),
                              );
                            },
                            child: Stack(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        blurRadius: 30,
                                        spreadRadius: 0.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                      child: Image.network(
                                        'https://www.shutterstock.com/image-photo/dawn-over-snow-capped-mountains-600nw-2233176223.jpg',
                                        fit: BoxFit.fill,
                                      ),
                                      height: 180,
                                      width: 180,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 17.0,
                                  left: 23.0,
                                  child: Text(
                                    'Asthetics',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                SizedBox(
                  width: 45,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AnimalLandScapeScreen()),
                              );
                            },
                            child: Stack(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        blurRadius: 30,
                                        spreadRadius: 0.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEqrb3qQN-yQk8mq3eq4bj71hKiNF8SD1R7SFYnjiTVQ&s%27',
                                        fit: BoxFit.fill,
                                      ),
                                      height: 180,
                                      width: 180,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 17.0,
                                  left: 23.0,
                                  child: Text(
                                    'Animal',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                SizedBox(
                  width: 45,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CityLandScapeScreen()),
                              );
                            },
                            child: Stack(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        blurRadius: 30,
                                        spreadRadius: 0.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                      child: Image.network(
                                        'https://as2.ftcdn.net/v2/jpg/01/81/07/91/1000_F_181079136_irl2A25Clc5Bi2Lwa3Q9kJvF0RlFv8tU.jpg',
                                        fit: BoxFit.fill,
                                      ),
                                      height: 180,
                                      width: 180,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 17.0,
                                  left: 23.0,
                                  child: Text(
                                    'City',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const TravelLandScapeScreen(),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        blurRadius: 30,
                                        spreadRadius: 0.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                      child: Image.network(
                                        'https://www.forbes.com/advisor/wp-content/uploads/2023/07/travel-insurance-woman-on-boat.jpeg.jpg',
                                        fit: BoxFit.fill,
                                      ),
                                      height: 180,
                                      width: 180,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 17.0,
                                  left: 23.0,
                                  child: Text(
                                    'Travel',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                SizedBox(
                  width: 45,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SkyLandScapeScreen()),
                              );
                            },
                            child: Stack(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        blurRadius: 30,
                                        spreadRadius: 0.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                      child: Image.network(
                                        'https://images.pexels.com/photos/1048283/pexels-photo-1048283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                        fit: BoxFit.fill,
                                      ),
                                      height: 180,
                                      width: 180,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 17.0,
                                  left: 23.0,
                                  child: Text(
                                    'Sky',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                SizedBox(
                  width: 45,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RoadLandScapeScreen()),
                              );
                            },
                            child: Stack(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        blurRadius: 30,
                                        spreadRadius: 0.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                      child: Image.network(
                                        'https://www.popsci.com/uploads/2019/04/22/RACMJSXXIK7BFWBEPV5KGO6TNA.jpg?auto=webp&width=1440&height=865.6875',
                                        fit: BoxFit.fill,
                                      ),
                                      height: 180,
                                      width: 180,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 17.0,
                                  left: 23.0,
                                  child: Text(
                                    'Road',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                SizedBox(
                  width: 45,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FlowerLandScapeScreen()),
                              );
                            },
                            child: Stack(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        blurRadius: 30,
                                        spreadRadius: 0.0,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                      child: Image.network(
                                        'https://t3.ftcdn.net/jpg/05/79/87/24/360_F_579872405_LdPJDASOJeW0SQL7V8YC7a9vsvyUwhGP.jpg',
                                        fit: BoxFit.fill,
                                      ),
                                      height: 180,
                                      width: 180,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 17.0,
                                  left: 23.0,
                                  child: Text(
                                    'Flower',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
