import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notely/routes.dart';
import 'package:notely/widgets/app_button.dart';

class NoteCreation extends StatefulWidget {
  const NoteCreation({Key? key}) : super(key: key);

  @override
  State<NoteCreation> createState() => _NoteCreationState();
}

class _NoteCreationState extends State<NoteCreation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/align_left.png'),
        elevation: 0,
        actions: [
          Image.asset('assets/images/search.png'),
        ],
        title: Text(
          'All Notes',
          style: GoogleFonts.nunito(
              fontSize: 16, fontWeight: FontWeight.w900, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 90,
          ),
          Image.asset('assets/images/note.png'),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Create your first note',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Color(0xFF403B36),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Add a note about anything (your thoughts\n on climate change,'
            'or your history essay)\n and share it witht the world.',
            style: TextStyle(
              height: 1.5,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF403B36),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 70,
          ),
          AppButton(title: 'Create A Note', onTap: () {
              Navigator.of(context).pushNamed(AppRouter.editNote);
          }),
          const SizedBox(
            height: 20,
          ),
          InkWell(onTap: (){
            Navigator.of(context).pushNamed(AppRouter.recentNote);
          },
            child: const Text(
              'Import Notes',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Color(0xFFD9614C),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
