import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final String subtitle;
  const AppTextField({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color(0xFF403B36),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: subtitle,
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(width: 1, color: Colors.white))),
        ),
      ],
    );
  }
}
