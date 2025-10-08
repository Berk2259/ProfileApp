import 'package:flutter/material.dart';

//Taglerin container yapısı
class TagContainer extends StatelessWidget {
  final String tagName;
  const TagContainer({super.key, required this.tagName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.lightBlueAccent,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
          left: 16.0,
          right: 16.0,
        ),
        child: Text(tagName, style: TextStyle(fontSize: 10)),
      ),
    );
  }
}
