import 'package:flutter/material.dart';
import 'package:profile_uygulama/Containers/containers.dart';
import 'package:profile_uygulama/Detail/detail_screen.dart';

class ProjeScreen extends StatelessWidget {
  const ProjeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 16.0),
            child: Text('Yaptığım Projeler', style: TextStyle(fontSize: 25)),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16.0,
                    left: 16.0,
                    right: 8.0,
                  ),
                  child: GestureDetector(
                    onDoubleTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailScreen()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                              color: Colors.pink,
                            ),
                            child: Center(
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/images/gezinti.png',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 8.0,
                              right: 8.0,
                              left: 8.0,
                            ),
                            child: Text(
                              'Gezinti',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'Seyehat için rehber uygulaması',
                            style: TextStyle(fontSize: 10),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TagContainer(tagName: 'Flutter'),
                                SizedBox(width: 10),
                                TagContainer(tagName: 'Dart'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 16.0,
                    left: 8.0,
                    right: 16.0,
                  ),
                  child: GestureDetector(
                    onDoubleTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailScreen()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                topLeft: Radius.circular(25),
                              ),
                              color: Colors.indigo,
                            ),
                            child: Center(
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/images/safebite.png',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 8.0,
                              right: 8.0,
                              left: 8.0,
                            ),
                            child: Text(
                              'SafeBite',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'Çölyaklar için rehber uygulaması',
                            style: TextStyle(fontSize: 10),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TagContainer(tagName: 'Flutter'),
                                SizedBox(width: 10),
                                TagContainer(tagName: 'Dart'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
