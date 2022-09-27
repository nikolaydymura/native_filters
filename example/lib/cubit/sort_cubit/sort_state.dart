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
  final List<FilterItem> configurableFilters;
  final List<FilterItem> nonConfigurableFilters;

  SortSucceeded(this.configurableFilters, this.nonConfigurableFilters);

  @override
  List<Object> get props => [configurableFilters, nonConfigurableFilters];
}

class SortFailed extends SortState {
  final String errorMessage;

  SortFailed(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
