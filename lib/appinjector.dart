// app_injector.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/bag/bagCubit.dart';

class AppInjector extends StatelessWidget {
  final Widget child;

  AppInjector({required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BagCubit()),
        // Add more BLoCs as needed
      ],
      child: child,
    );
  }

  static T read<T>(BuildContext context) => context.read<T>();
  static T watch<T>(BuildContext context) => context.watch<T>();
}
