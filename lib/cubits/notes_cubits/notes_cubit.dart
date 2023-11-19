import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes(NoteModel note) {
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesbox.values.toList();
      emit(NotesSuccess(notes: notes));
    } on Exception catch (e) {
      emit(NotesFailure(errormessage: e.toString()));
    }
  }
}
