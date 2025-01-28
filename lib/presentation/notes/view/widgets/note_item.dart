import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/presentation/resources/color_manager.dart';
import 'package:task1/presentation/resources/font_style_manager.dart';
import 'package:task1/presentation/resources/values_manager.dart';

import '../../cubit/notes_cubit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.isDone,
    required this.note,
    required this.index,
  });
  final int index;
  final String note;
  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppPadding.p12),
      margin: EdgeInsets.symmetric(vertical: AppPadding.p8),
      decoration: BoxDecoration(
        color: ColorManager.lightPrimary,
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                BlocProvider.of<NotesCubit>(context)
                    .changeNoteState(isDone, index);
              },
              icon: BlocProvider.of<NotesCubit>(context).getCheckBox(isDone)),
          Text(
            note,
            style: FontStyleManager.textStyle20Regular,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                BlocProvider.of<NotesCubit>(context).deleteNote(isDone, index);
              },
              icon: Icon(Icons.delete))
        ],
      ),
    );
  }
}
