import 'package:flutter/material.dart';
import 'package:profile_uygulama/Containers/containers.dart';
import 'package:profile_uygulama/Detail/detail.dart';
import 'package:profile_uygulama/Widget/widget.dart';

class ProjeScreen extends StatelessWidget {
  const ProjeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 16.0),
              child: ProjeAnaBaslikWidget(
                iconBaslik: 'assets/gif/arrow.gif',
                anaBaslik: 'Yaptığım Projeler',
              ),
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
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ),
                        );
                      },
                      child: ProjeContainer(
                        containerProjeImage: 'assets/images/gezinti.png',
                        containerColorImage: Colors.pink,
                        containerProjeTitle: 'Gezinti',
                        containerProjeAciklama:
                            'Seyehat için rehber uygulaması',
                        containerTagName1: 'Flutter',
                        containerTagName2: 'Dart',
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
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ),
                        );
                      },
                      child: ProjeContainer(
                        containerProjeImage: 'assets/images/safebite.png',
                        containerColorImage: Colors.indigo,
                        containerProjeTitle: 'SafeBite',
                        containerProjeAciklama:
                            'Çölyaklar için rehber uygulaması',
                        containerTagName1: 'Flutter',
                        containerTagName2: 'Dart',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 8.0),
                    child: GestureDetector(
                      onDoubleTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ),
                        );
                      },
                      child: ProjeContainer(
                        containerProjeImage: 'assets/images/crafty.png',
                        containerColorImage: Colors.deepOrangeAccent,
                        containerProjeTitle: 'Crafty',
                        containerProjeAciklama:
                            'Origamiler için rehber uygulaması',
                        containerTagName1: 'Flutter',
                        containerTagName2: 'Dart',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 16.0),
                    child: GestureDetector(
                      onDoubleTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ),
                        );
                      },
                      child: ProjeContainer(
                        containerProjeImage: 'assets/images/portfolyo.png',
                        containerColorImage: Colors.amber,
                        containerProjeTitle: 'ProfileApp',
                        containerProjeAciklama: 'Kişisel portfolyo Uygulamam',
                        containerTagName1: 'Flutter',
                        containerTagName2: 'Dart',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0),
              child: ProjeAnaBaslikWidget(
                iconBaslik: 'assets/gif/handshake.gif',
                anaBaslik: 'Katıldığım Projeler',
              ),
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
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ),
                        );
                      },
                      child: ProjeContainer(
                        containerProjeImage: 'assets/images/code.png',
                        containerColorImage: Colors.deepPurpleAccent,
                        containerProjeTitle: 'Movliq',
                        containerProjeAciklama: 'Sosyal Koşu Uygulaması',
                        containerTagName1: 'Flutter',
                        containerTagName2: 'Dart',
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
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ),
                        );
                      },
                      child: ProjeContainer(
                        containerProjeImage: 'assets/images/code.png',
                        containerColorImage: Colors.teal,
                        containerProjeTitle: 'Dijital Arı',
                        containerProjeAciklama:
                            'Dijital Arı firması için uygulama',
                        containerTagName1: 'Flutter',
                        containerTagName2: 'Dart',
                      ),
                    ),
                  ),
                ),
              ],
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
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ),
                        );
                      },
                      child: ProjeContainer(
                        containerProjeImage: 'assets/images/code.png',
                        containerColorImage: Colors.brown,
                        containerProjeTitle: 'Maç Kafası',
                        containerProjeAciklama: 'Halısaha Uygulaması',
                        containerTagName1: 'Flutter',
                        containerTagName2: 'Dart',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
