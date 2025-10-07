import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjeAnaBaslikWidget extends StatelessWidget {
  final String iconBaslik;
  final String anaBaslik;
  const ProjeAnaBaslikWidget({
    super.key,
    required this.iconBaslik,
    required this.anaBaslik,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(child: Image.asset(iconBaslik, width: 35, height: 35)),
        SizedBox(width: 10),
        Text(
          anaBaslik,
          style: GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
