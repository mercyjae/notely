import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AppButton({
    Key? key, required this.title, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFFD9614C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize:  Size(340, 60)),
        onPressed: onTap,
        child:  Text(title,style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.white
        ),));
  }
}
