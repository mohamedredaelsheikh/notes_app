import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xff7E6551);
  addnote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      note.color = color.value;
      await notesbox.add(note);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      emit(AddNoteFailure(errormessage: e.toString()));
    }
  }
}
