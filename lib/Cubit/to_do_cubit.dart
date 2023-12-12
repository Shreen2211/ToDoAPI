import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_api/constant/Token.dart';

import '../data/Network/endPoint.dart';
import '../data/Network/DioHelper.dart';


part 'to_do_state.dart';

class ToDoCubit extends Cubit<ToDoState> {
  ToDoCubit() : super(ToDoInitial());

  static ToDoCubit get(context) => BlocProvider.of<ToDoCubit>(context);

  TextEditingController? EmailController = TextEditingController();
  TextEditingController? PasswordController = TextEditingController();


  Future<void> post() async {
    emit(loadingLogingState());
    dioHelper.get(
      token: token.Token,
      endpoint: End_Piont.endPoint_login,
      body: {'email': 'a@a.aa', 'password': '123456789'},
    ).then((value) {
      print(value?.data);
      print('اشطر كتكوته');
      emit(SucessLogingState());
    }).catchError((error) {
      print(error.response?.data);
      print('every thing kharaaa');
      emit(ErrorLogingState());
      throw error;
    });
  }

  Future<void> postReg() async {
    emit(loadingRegState());
    dioHelper.get(
      token: token.Token,
      endpoint: End_Piont.endPoint_login,
      body: {'email': 'shreen@sh', 'name':'shreen','password': '123456789','password_confirmation':'123456789'},
    ).then((value) {
      print(value?.data);
      print('اشطر كتكوته');
      emit(SucessRegState());
    }).catchError((error) {
      print(error.response?.data);
      print('every thing kharaaa');
      emit(ErrorRegState());
      throw error;
    });
  }
  Future<void> getAll() async {
    emit(loadingTasksState());
    dioHelper.getAll(
      token: token.Token,
      endpoint: End_Piont.getAllData,
    ).then((value) {
      print(value?.data);
      print('اشطر كتكوته');
      emit(SucessTasksState());
    }).catchError((error) {
      print(error.response?.data);
      print('every thing kharaaa');
      emit(ErrorTasksState());
      throw error;
    });
  }
}
