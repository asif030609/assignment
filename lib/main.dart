import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const PhotoGallery());
}

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
          leading:
              Padding(
                padding: const EdgeInsets.fromLTRB(26, 10,0, 10),
                child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    SystemNavigator.pop();
                  },

                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
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
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            children: [
              Row(
                children: [
                  // Apply shadow using DecoratedBox with DecorationList
                  Stack(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            child: Image.asset(
                              'assets/images/mode.png',
                              fit: BoxFit.scaleDown,
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

                  const SizedBox(width: 10),
                  Stack(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 20.0,
                              spreadRadius: 15.0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            child: Image.asset(
                              'assets/images/asthetics.png',
                              fit: BoxFit.scaleDown,
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
                ],
              ),
              const SizedBox(height: 10), // Add spacing between rows
              //Another Row
              Row(
                children: [
                  Stack(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 20.0,
                              spreadRadius: 15.0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            child: Image.asset(
                              'assets/images/animal.png',
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
                  // Apply shadow using DecoratedBox with DecorationList

                  const SizedBox(width: 10),
                  Stack(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 20.0,
                              spreadRadius: 15.0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            child: Image.asset(
                              'assets/images/city.png',
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
                ],
              ),
              //Another Row
              const SizedBox(height: 10),
              Row(
                children: [
                  Stack(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 20.0,
                              spreadRadius: 15.0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            child: Image.asset(
                              'assets/images/travel.png',
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
                  // Apply shadow using DecoratedBox with DecorationList

                  const SizedBox(width: 10),
                  Stack(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 20.0,
                              spreadRadius: 15.0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            child: Image.asset(
                              'assets/images/sky.png',
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
                ],
              ),
              //Another Row
              const SizedBox(height: 10),
              Row(
                children: [
                  Stack(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 20.0,
                              spreadRadius: 15.0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            child: Image.asset(
                              'assets/images/road.png',
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
                  // Apply shadow using DecoratedBox with DecorationList

                  const SizedBox(width: 10),
                  Stack(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              blurRadius: 20.0,
                              spreadRadius: 15.0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            child: Image.asset(
                              'assets/images/flower.png',
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
