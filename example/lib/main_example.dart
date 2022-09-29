import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:native_filters/native_filters.dart';
import 'package:provider/provider.dart';

import 'cubit/available_filters_cubit/available_filters_cubit.dart';
import 'pages/list_filters.dart';

void main() async {
  const filtersFactory = FilterFactory();

  final items = await filtersFactory.availableFilters;
  runApp(
    MultiProvider(
      providers: [
        BlocProvider(
          create: (_) => AvailableFiltersCubit(items),
        ),
      ],
      child:
          const MaterialApp(home: FilterListScreen(title: 'Filters example')),
    ),
  );
}
