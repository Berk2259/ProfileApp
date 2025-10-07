import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:profile_uygulama/Screen/screen.dart';
import 'package:lottie/lottie.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  final _controller = NotchBottomBarController(index: 0);

  final List<Widget> _pages = [
    ProjeScreen(),
    DeneyimScreen(),
    SertifikalarScreen(),
    ProfilScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final int currentIndex = _controller.index;

    return Scaffold(
      body: _pages[currentIndex],
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        color: Colors.white,
        showLabel: true,
        notchColor: Colors.white,
        removeMargins: false,
        bottomBarWidth: double.infinity,
        durationInMilliSeconds: 300,
        kBottomRadius: 28.0, // alt kavis
        kIconSize: 26.0, // ikon boyutu
        bottomBarItems: [
          BottomBarItem(
            inActiveItem: Image.asset(
              'assets/icons/home.png',
              color: Colors.grey,
            ),
            activeItem: Transform.scale(
              scale: 1.5,
              child: Lottie.asset(
                'assets/json/Home.json',
                repeat: true,
                reverse: true,
                animate: true,
              ),
            ),
            itemLabel: 'Projeler',
          ),
          BottomBarItem(
            inActiveItem: Image.asset(
              'assets/icons/award.png',
              color: Colors.grey,
            ),
            activeItem: Transform.scale(
              scale: 1.5,
              child: Lottie.asset(
                'assets/json/deneyim.json',
                repeat: true,
                reverse: true,
                animate: true,
              ),
            ),
            itemLabel: 'Deneyim',
          ),
          BottomBarItem(
            inActiveItem: Image.asset(
              'assets/icons/education.png',
              color: Colors.grey,
            ),
            activeItem: Transform.scale(
              scale: 1.5,
              child: Lottie.asset(
                'assets/json/education.json',
                repeat: true,
                reverse: true,
                animate: true,
              ),
            ),
            itemLabel: 'Eğitim',
          ),
          BottomBarItem(
            inActiveItem: Image.asset(
              'assets/icons/profil.png',
              color: Colors.grey,
            ),
            activeItem: Transform.scale(
              scale: 1.5,
              child: Lottie.asset(
                'assets/json/profile.json',
                repeat: true,
                reverse: true,
                animate: true,
              ),
            ),
            itemLabel: 'Profil',
          ),
        ],
        onTap: (index) {
          setState(() {
            _controller.index = index;
          });
        },
      ),
    );
  }
}
