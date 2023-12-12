import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/Network/DioHelper.dart';
import 'Cubit/to_do_cubit.dart';
import 'Screen/LoginScreen.dart';

void main() {
  dioHelper.init();
  runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ToDoCubit(),)
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ),
      ));
}
