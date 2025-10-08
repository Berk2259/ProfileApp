import 'package:flutter/material.dart';

class DetailButtonWidget extends StatelessWidget {
  final Color buttonColor;
  final String buttonIcon;
  final String buttonName;
  const DetailButtonWidget({
    super.key,
    required this.buttonColor,
    required this.buttonIcon,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          bottom: 16.0,
          left: 8.0,
          right: 8.0,
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shadowColor: Colors.transparent,
            overlayColor: Colors.transparent,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            minimumSize: Size(double.infinity, 50),
          ),
          onPressed: () {},
          child: Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage(buttonIcon)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  buttonName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
