import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'cubit/sort_cubit/available_filters_cubit.dart';
import 'list_filters.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        BlocProvider(
          create: (_) => AvailableFiltersCubit(),
        ),
      ],
      child:
          const MaterialApp(home: FilterListScreen(title: 'Filters example')),
    ),
  );
}
