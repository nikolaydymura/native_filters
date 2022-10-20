import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_filters/native_filters.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

part 'available_filters_state.dart';

class AvailableFiltersCubit extends Cubit<AvailableFiltersState> {
  AvailableFiltersCubit() : super(AvailableFiltersStateInitial());

  final filtersFactory =  FilterFactory();

  @override
  Stream<AvailableFiltersState> get stream => super.stream.doOnListen(() {
        if (state is AvailableFiltersStateInitial) {
          fetchSortData();
        }
      });

  void fetchSortData()  {
    try {
      emit(AvailableFiltersStateWaiting());

      final items = FilterFactory.availableFilters;

      List<FilterItem> _configurableFilters =
          items.where((e) => e.isConfigurable).toList();
      List<FilterItem> _nonConfigurableFilters =
          items.whereNot((e) => e.isConfigurable).toList();

      emit(
        AvailableFiltersStateSucceeded(
          _configurableFilters,
          _nonConfigurableFilters,
        ),
      );
    } catch (e) {
      emit(AvailableFiltersStateFailed(e.toString()));
    }
  }
}
