import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Animal extends StatefulWidget {
  const Animal({super.key});

  @override
  State<Animal> createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  @override
  Widget build(BuildContext context) {
    return const AnimalScreen();
  }
}
class AnimalScreen extends StatelessWidget {
  const AnimalScreen({super.key});

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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEqrb3qQN-yQk8mq3eq4bj71hKiNF8SD1R7SFYnjiTVQ&s',
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
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Animal\'s Story',
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
              'Each picture tells a unique story, offering glimpses into the lives and habitats of these fascinating beings. Whether you\'re an avid nature enthusiast',
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
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.9,
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
                  // Handle container click
                  print('');
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

