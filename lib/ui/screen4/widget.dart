import 'package:flutter/material.dart';

class Ui4Widget extends StatelessWidget {
  final IconData leadingIcon;
  final String titleText;
  final String subtitleText;

  const Ui4Widget(
      {required this.leadingIcon,
      required this.titleText,
      required this.subtitleText});

  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 25,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 22,
          child: Icon(
            leadingIcon,
            color: Colors.blue,
          ),
        ),
      ),
      title: Text(
        titleText,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        subtitleText,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}