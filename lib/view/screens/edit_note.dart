import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EditNote extends StatelessWidget {
  const EditNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SvgPicture.asset('assets/icons/menu.svg'),
            )
          ],
          title: Text(
            'Edit Note',
            style: GoogleFonts.nunito(
                fontSize: 16, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextFormField(
              style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Color(0xFF403B36),
            ),
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: UnderlineInputBorder(),
                hintText: 'Title',
                hintStyle:  TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Color(0xFF403B36),
            ),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(100),
              ],
            ),
            TextFormField(
              style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF403B36),
            ),
      
              cursorColor: Colors.black,
              maxLines: null,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Description',
                 hintStyle:  TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF403B36),
            ),
         
              ),
                textAlign: TextAlign.justify,
              
            ),
          ]),
        ));
  }
}
