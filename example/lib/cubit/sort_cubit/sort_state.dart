part of 'sort_cubit.dart';

abstract class SortState extends Equatable {
  @override
  List<Object> get props => [];
}

class SortInitial extends SortState {}

class SortEmpty extends SortState {
  final String message;

  SortEmpty(this.message);

  @override
  List<Object> get props => [message];
}

class SortWaiting extends SortState {}

class SortSucceeded extends SortState {
  final List<FilterItem> sortedList;

  SortSucceeded(this.sortedList);

  @override
  List<Object> get props => [sortedList];
}

class SortFailed extends SortState {
  final String errorMessage;

  SortFailed(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
