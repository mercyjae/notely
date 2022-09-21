import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EditNote extends StatelessWidget {
  const EditNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          elevation: 0,
          actions: [SvgPicture.asset('assets/icons/menu.svg')],
          title: Text(
            'All Notes',
            style: GoogleFonts.nunito(
                fontSize: 16, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Cerebral palsy sport",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF403B36),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'Cerebral palsy sport classification is a\nclassification system'
                    ' used by sports\nthat include people with cerebral\npalsy (CP) with '
                    'different degrees of\nseverity to compete fairly against\neach other and '
                    'against others with\ndifferent types of disabilities.In\ngeneral, '
                    'Cerebral Palsy-International\nSports and Recreation Association\n(CP-ISRA) serves as the '
                    'body in\ncharge of classification for cerebral\npalsy sport, though some sports have\ntheir '
                    'own classification systems\nwhich apply to CP sportspeople|',
                    style: TextStyle(
                      height: 1.3,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF403B36),
                    )),
              ]),
        ));
  }
}
