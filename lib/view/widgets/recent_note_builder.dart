import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notely/view/widgets/note_card.dart';

class RecentNotesBuilder extends StatelessWidget {
  final List<Note> notes;
  const RecentNotesBuilder({Key? key, required this.notes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: notes.length,
      //padding: EdgeInsets.zero,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      crossAxisSpacing: 12,
      mainAxisSpacing: 8,
      itemBuilder: (context, index) {
        final note = notes[index];
        return NoteCard(title: note.title, description: note.description);
      },
    );
  }
}