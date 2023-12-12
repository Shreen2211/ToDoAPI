part of 'to_do_cubit.dart';

@immutable
abstract class ToDoState {}

class ToDoInitial extends ToDoState {}

class loadingLogingState extends ToDoState {}

class SucessLogingState extends ToDoState {}

class ErrorLogingState extends ToDoState {}

class loadingRegState extends ToDoState {}

class SucessRegState extends ToDoState {}

class ErrorRegState extends ToDoState {}

class loadingTasksState extends ToDoState {}

class SucessTasksState extends ToDoState {}

class ErrorTasksState extends ToDoState {}
