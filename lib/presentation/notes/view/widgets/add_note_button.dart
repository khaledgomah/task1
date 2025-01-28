import 'package:flutter/material.dart';
import 'package:task1/presentation/notes/view/widgets/add_note_button_sheet.dart';

class AddNoteButton extends StatefulWidget {
  const AddNoteButton({
    super.key,
  });

  @override
  State<AddNoteButton> createState() => _AddNoteButtonState();
}

class _AddNoteButtonState extends State<AddNoteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const AddNoteButtonSheet(),
            );
          },
        );
      },
    );
  }
}
