import 'package:flutter/material.dart';

class ProjeContainerBaslikWidget extends StatelessWidget {
  final String projeTitle;
  const ProjeContainerBaslikWidget({super.key, required this.projeTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
      child: Text(
        projeTitle,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}
