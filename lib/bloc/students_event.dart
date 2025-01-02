part of 'students_bloc.dart';

sealed class StudentsEvent extends Equatable {
  const StudentsEvent();

  @override
  List<Object> get props => [];
}

class AddStudentEvent extends StudentsEvent {
  final StudentModel studentModel;

  const AddStudentEvent(this.studentModel);
}

class DeleteStudent extends StudentsEvent {
  final int index;
  const DeleteStudent(this.index);
}
