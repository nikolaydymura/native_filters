part of 'available_filters_cubit.dart';

abstract class AvailableFiltersState extends Equatable {
  @override
  List<Object> get props => [];
}

class AvailableFiltersStateInitial extends AvailableFiltersState {
  AvailableFiltersStateInitial();
}

class AvailableFiltersStateWaiting extends AvailableFiltersState {}

class AvailableFiltersStateSucceeded extends AvailableFiltersState {
  final List<FilterItem> favouritesFilters;
  final List<FilterItem> configurableFilters;
  final List<FilterItem> nonConfigurableFilters;
  final List<FilterItem> videoSupportedFilters;
  final List<FilterItem> imageSupportedFilters;

  AvailableFiltersStateSucceeded(
    this.favouritesFilters,
    this.configurableFilters,
    this.nonConfigurableFilters,
    this.videoSupportedFilters,
    this.imageSupportedFilters,
  );

  @override
  List<Object> get props => [
        favouritesFilters,
        configurableFilters,
        nonConfigurableFilters,
        videoSupportedFilters,
        imageSupportedFilters,
      ];
}

class AvailableFiltersStateFailed extends AvailableFiltersState {
  final String message;

  AvailableFiltersStateFailed(this.message);

  @override
  List<Object> get props => [message];
}
