import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'cubit/available_filters_cubit/available_filters_cubit.dart';
import 'pages/list_filters.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        BlocProvider(
          create: (_) => AvailableFiltersCubit(),
        ),
      ],
      child: MaterialApp(
        home: const FilterListScreen(title: 'Filters example'),
        theme: ThemeData(
          sliderTheme: const SliderThemeData(
            showValueIndicator: ShowValueIndicator.always,
          ),
          inputDecorationTheme: InputDecorationTheme(
            isCollapsed: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    ),
  );
}
