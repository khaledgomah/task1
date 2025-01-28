import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/presentation/notes/cubit/notes_cubit.dart';
import 'package:task1/presentation/notes/view/widgets/notes_list_view.dart';
import 'package:task1/presentation/resources/font_style_manager.dart';
import 'package:task1/presentation/resources/values_manager.dart';

import 'widgets/add_note_button.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Notes'),
        actions: [AddNoteButton()],
      ),
      body: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          List<String> doneNotesList =
              BlocProvider.of<NotesCubit>(context).getDoneNotes();
          List<String> notesList =
              BlocProvider.of<NotesCubit>(context).getNotes();
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.all(AppPadding.p16),
              child: ListView(
                children: [
                  notesList.isNotEmpty
                      ? Text(
                          'Notes',
                          style: FontStyleManager.textStyle30Bold,
                        )
                      : SizedBox(),
                  NotesListView(
                    isDone: false,
                    notesList: notesList,
                  ),
                  doneNotesList.isNotEmpty
                      ? Text(
                          'Done Notes',
                          style: FontStyleManager.textStyle30Bold,
                        )
                      : SizedBox(),
                  NotesListView(
                    isDone: true,
                    notesList: doneNotesList,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
