import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/presentation/resources/constant_manager.dart';

import '../../common/service_locator.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<String> _notesList =
      getIt<SharedPreferencesWithCache>().getStringList(ConstantManager.notesBox) ?? [];
  // ignore: prefer_final_fields
  List<String> _doneNotesList =
      getIt<SharedPreferencesWithCache>().getStringList(ConstantManager.doneNotesBox) ?? [];

  //get notes list
  List<String> getNotes() {
    _notesList =
        getIt<SharedPreferencesWithCache>().getStringList(ConstantManager.notesBox) ?? [];
    return _notesList;
  }

  List<String> getDoneNotes() {
    _doneNotesList =
        getIt<SharedPreferencesWithCache>().getStringList(ConstantManager.doneNotesBox) ?? [];
    return _doneNotesList;
  }

  //get check box icon
  Icon getCheckBox(bool isDone) {
    switch (isDone) {
      case true:
        return Icon(Icons.check_box);
      case false:
        return Icon(Icons.check_box_outline_blank);
    }
  }

  //save new note local
  Future<void> addNote(String note) async {
    _notesList.add(note);
    await getIt<SharedPreferencesWithCache>()
        .setStringList(ConstantManager.notesBox, _notesList);
    emit(AddNoteState());
  }

  //make note done
  Future<void> _makeNoteDone(int noteIndex) async {
    _doneNotesList.add(_notesList[noteIndex]);
    _notesList.removeAt(noteIndex);
    await getIt<SharedPreferencesWithCache>()
        .setStringList(ConstantManager.doneNotesBox, _doneNotesList);
    await getIt<SharedPreferencesWithCache>()
        .setStringList(ConstantManager.notesBox, _notesList);
    emit(ChangeNoteDoneState());
  }

  //make note note done
  Future<void> _makeNoteNotDone(int noteIndex) async {
    _notesList.add(_doneNotesList[noteIndex]);
    _doneNotesList.removeAt(noteIndex);
    await getIt<SharedPreferencesWithCache>()
        .setStringList(ConstantManager.doneNotesBox, _doneNotesList);
    await getIt<SharedPreferencesWithCache>()
        .setStringList(ConstantManager.notesBox, _notesList);
    emit(ChangeNoteDoneState());
  }

  Future<void> changeNoteState(bool isDone, int noteIndex) async {
    if (isDone == true) {
      await _makeNoteNotDone(noteIndex);
    } else {
      await _makeNoteDone(noteIndex);
    }
  }

  //delete note
  Future<void> deleteNote(bool isDone, int noteIndex) async {
    if (isDone == true) {
      _doneNotesList.removeAt(noteIndex);
      await getIt<SharedPreferencesWithCache>()
          .setStringList(ConstantManager.doneNotesBox, _doneNotesList);
    } else {
      _notesList.removeAt(noteIndex);
      await getIt<SharedPreferencesWithCache>()
          .setStringList(ConstantManager.notesBox, _notesList);
    }
    emit(DeleteNoteState());
  }
}
