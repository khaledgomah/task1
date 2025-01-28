import 'package:flutter/material.dart';
import 'package:task1/presentation/notes/view/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView(
      {super.key, required this.notesList, required this.isDone});
  final List<String> notesList;
  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: notesList.length,
      itemBuilder: (context, index) => NoteItem(
        index: index,
        note: notesList[index],
        isDone: isDone,
      ),
    );
  }
}
