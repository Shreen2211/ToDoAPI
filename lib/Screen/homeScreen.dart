import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/to_do_cubit.dart';


class HomeScreenTodoApp extends StatelessWidget {
  HomeScreenTodoApp({super.key});

  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'To Do App',
          style: TextStyle(fontSize: 25.0),
        ),
        centerTitle: true,
      ),
      body: BlocProvider.value(
        value: ToDoCubit.get(context)..getAll(),
        child: BlocConsumer<ToDoCubit, ToDoState>(
          builder: (context, state) {
            var cubit = ToDoCubit.get(context);
            return ListView.separated(
                itemBuilder: (context, index) {
                  return;
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10.0,
                  );
                },
                itemCount: 5);
          },
          listener: (context, state) {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}
