import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/to_do_cubit.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<ToDoCubit, ToDoState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            var cubit = ToDoCubit.get(context);
            return Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(18),
                    child: TextFormField(
                      controller: cubit.EmailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: 'Name',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.pink,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(18),
                    child: TextFormField(
                      controller: cubit.EmailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Colors.pink,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(18),
                    child: TextFormField(
                      controller: cubit.PasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: const Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.pink,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(15))),obscureText: true,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(18),
                    child: TextFormField(
                      controller: cubit.PasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          hintText: 'Password confirm',
                          prefixIcon: const Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.pink,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(15))),
                      obscureText: true,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      cubit.postReg();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(15)),
                      width: double.infinity,
                      height: 50,
                      margin: EdgeInsets.all(18),
                      child: Center(child: Text('Register')),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
