part of 'notes_cubit.dart';


sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class AddNoteState extends NotesState {}
final class DeleteNoteState extends NotesState {}
final class ChangeNoteDoneState extends NotesState {}
