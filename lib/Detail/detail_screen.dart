import 'package:flutter/material.dart';
import 'package:profile_uygulama/Widget/detail_button_widget.dart';

//Detay Sayfası burada bulunuyor
class DetailScreen extends StatelessWidget {
  final String baslik;
  DetailScreen({super.key, required this.baslik});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: Text(baslik, style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Spacer(),
          Row(
            children: [
              DetailButtonWidget(
                buttonColor: Colors.black,
                buttonIcon: 'assets/icons/github.png',
                buttonName: 'Github',
              ),
              DetailButtonWidget(
                buttonColor: Colors.deepOrange.shade700,
                buttonIcon: 'assets/icons/download.png',
                buttonName: 'Demo',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
