import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notely/view/widgets/note_card.dart';
import 'package:notely/view/widgets/recent_note_builder.dart';

class RecentNotes extends StatefulWidget {
  const RecentNotes({Key? key}) : super(key: key);

  @override
  State<RecentNotes> createState() => _RecentNotesState();
}

class _RecentNotesState extends State<RecentNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        leading: Image.asset('assets/images/align_left.png'),
        elevation: 0,
        actions: [
          Image.asset('assets/images/search.png'),
        ],
        title: Text(
          'Recent Notes',
          style: GoogleFonts.nunito(
              fontSize: 16, fontWeight: FontWeight.w900, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:15),
        child: Column(children: const [
          Expanded(
                child: RecentNotesBuilder(
                  notes: [
                    Note(
                      title: 'Cerebral palsy\nsport',
                      description: 'Cerebral palsy\nsportclassification  '
                          'is a classification system used by sports that include'
                          ' people with cerebral palsy (CP) with different'
                          ' degrees of severity to compete fairly '
                          'against each...',
                    ),
                    Note(
                        title: 'Trends List',
                        description: '\u2022 Glassmorphism\n'
                            '\u2022 Claymorphism\n'
                            '\u2022 Big Typography\n'
                            '\u2022 3d Illustrations\n'
                            '\u2022 Flat Colors...\n'),
                              Note(
                      title: 'School Essay on Accessibility',
                      description:
                          'Accessibility is the practice of making your websites '
                          'usable by as many people as possible. '
                          'We traditionally think of this as being '
                          'about people with disabilities...',
                    ),
                    Note(
                      title: 'Emotions of Typography',
                      description: 'Typography is a part of user interface. '
                          'Many of us focus on User Experience rather than User '
                          'Interface as a novice UI/UX designer since deciding '
                          'a typeface, colors, and typefaces is a '
                          'pain as it takes a lot of...',
                    ),
                  
                    Note(
                      title: 'Lamina Peak',
                      description: 'Lamina Peak (70°32′S 68°45′WCoordinates: '
                          '70°32′S 68°45′W) '
                          'is a prominent pyramid-shaped peak, 1,280 metres'
                          ' (4,200 ft) high, surmounting a stratified ridge '
                          'which curves down from Mount Edred northeastward '
                          'toward George VI Sound.',
                    ),
                     Note(
                      title: 'IG Posts',
                      description: '\u2022 Typography Checklist\n'
                          '\u2022 Make 3D Card inside Figma\n'
                          '\u2022 Best figma plugins stock images websites',
                    ),
                  ],
                ),
              ),
        ]),
      ),);
  }
}