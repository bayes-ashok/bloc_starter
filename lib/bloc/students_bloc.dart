// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bloc_test/model/student_model.dart';
import 'package:equatable/equatable.dart';

part 'students_event.dart';
part 'students_state.dart';

class StudentsBloc extends Bloc<StudentsEvent, StudentsState> {
  StudentsBloc() : super(StudentsState.initial()) {
    on<AddStudentEvent>((event, emit) async {
      emit(state.copyWith(loading: true));
      await Future.delayed(Duration(seconds: 1), () {
        emit(state.copyWith(
          students: state.students..add(event.studentModel),
          loading: false,
        ));
      });
    });

    on<DeleteStudent>((event, emit) async {
      emit(state.copyWith(loading: true));
      await Future.delayed(Duration(seconds: 1));

      final List<StudentModel> updatedStudents = List.from(state.students)
        ..removeAt(event.index);
      emit(state.copyWith(
        students: updatedStudents,
        loading: false,
      ));
    });
  }
}
