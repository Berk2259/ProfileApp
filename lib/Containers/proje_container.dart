import 'package:flutter/material.dart';
import 'package:profile_uygulama/Containers/containers.dart';
import 'package:profile_uygulama/Widget/widget.dart';

class ProjeContainer extends StatelessWidget {
  final String containerProjeImage;
  final Color containerColorImage;
  final String containerProjeTitle;
  final String containerProjeAciklama;
  final String containerTagName1;
  final String containerTagName2;

  const ProjeContainer({
    super.key,
    required this.containerProjeImage,
    required this.containerColorImage,
    required this.containerProjeTitle,
    required this.containerProjeAciklama,
    required this.containerTagName1,
    required this.containerTagName2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ProjeGorselContainer(
            projeImage: containerProjeImage,
            colorImage: containerColorImage,
          ),
          ProjeContainerBaslikWidget(projeTitle: containerProjeTitle),
          Text(containerProjeAciklama, style: TextStyle(fontSize: 10)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TagContainer(tagName: containerTagName1),
                SizedBox(width: 10),
                TagContainer(tagName: containerTagName2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
