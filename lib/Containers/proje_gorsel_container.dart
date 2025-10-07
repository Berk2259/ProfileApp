import 'package:flutter/material.dart';

class ProjeGorselContainer extends StatelessWidget {
  final String projeImage;
  final Color colorImage;
  const ProjeGorselContainer({
    super.key,
    required this.projeImage,
    required this.colorImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        color: colorImage,
      ),
      child: Center(
        child: CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(projeImage),
        ),
      ),
    );
  }
}
