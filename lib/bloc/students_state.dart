part of 'students_bloc.dart';

class StudentsState extends Equatable {
  final List<StudentModel> students;
  final bool loading;

  const StudentsState({
    required this.students,
    required this.loading,
  });

  factory StudentsState.initial() {
    return StudentsState(students: [], loading: false);
  }

  StudentsState copyWith({List<StudentModel>? students, bool? loading}) {
    return StudentsState(
      students: students ?? this.students,
      loading: loading ?? this.loading,
    );
  }

  @override
  List<Object> get props => [students, loading];
}
