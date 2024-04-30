import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class City extends StatefulWidget {
  const City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return const CityScreen();
  }
}

class CityScreen extends StatelessWidget {
  const CityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            const SizedBox(
              width: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 35,
                      spreadRadius: 0,
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
                    width: 380,
                    height: 325,
                  ),
                ),
              ),
            ],
          ),
          const Column(
            children: [
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'City\'s Landscape',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20.00, vertical: 5.00),
            child: Text(
              'Every snapshot tells a story of beauty, tranquility, and creativity. Each carefully curated image captures moments of serenity, elegance, and wonder, inviting you to embark on a journey of visual delight.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.00),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
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
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.00),
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
          SizedBox(height:15,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
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
                        'Dawn',
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
                  // Handle container click
                  print('Leaves');
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
                            'https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg',
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
                        'Leaves',
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
    );
  }
}
