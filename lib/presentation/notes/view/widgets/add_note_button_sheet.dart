import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/presentation/notes/cubit/notes_cubit.dart';
import '../../../common/custom_text_form_field.dart';

class AddNoteButtonSheet extends StatefulWidget {
  const AddNoteButtonSheet({
    super.key,
  });

  @override
  State<AddNoteButtonSheet> createState() => _AddNoteButtonSheetState();
}

class _AddNoteButtonSheetState extends State<AddNoteButtonSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? note;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 48,
                  ),
                  CustomTextFormField(
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "this field can't be empty";
                      } else {
                        return null;
                      }
                    },
                    autovalidateMode: autovalidateMode,
                    onSaved: (value) {
                      note = value;
                    },
                    hint: 'content',
                    maxLines: 5,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TextButton(
                    child: Text('Add'),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        BlocProvider.of<NotesCubit>(context).addNote(note!);
                        Navigator.pop(context);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
