part of 'available_filters_cubit.dart';

abstract class AvailableFiltersState extends Equatable {
  @override
  List<Object> get props => [];
}

class AvailableFiltersStateInitial extends AvailableFiltersState {
  final List<FilterItem> items;

  AvailableFiltersStateInitial(this.items);
  @override
  List<Object> get props => [];
}

class AvailableFiltersStateEmpty extends AvailableFiltersState {
  final String message;

  AvailableFiltersStateEmpty(this.message);

  @override
  List<Object> get props => [message];
}

class AvailableFiltersStateWaiting extends AvailableFiltersState {}

class AvailableFiltersStateSucceeded extends AvailableFiltersState {
  final List<FilterItem> configurableFilters;
  final List<FilterItem> nonConfigurableFilters;

  AvailableFiltersStateSucceeded(
    this.configurableFilters,
    this.nonConfigurableFilters,
  );

  @override
  List<Object> get props => [configurableFilters, nonConfigurableFilters];
}

class AvailableFiltersStateFailed extends AvailableFiltersState {
  final String errorMessage;

  AvailableFiltersStateFailed(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
