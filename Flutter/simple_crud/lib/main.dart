import 'package:flutter/material.dart';
import 'package:simple_crud/provider/users.dart';
import 'package:simple_crud/routes/app_routes.dart';
import 'package:simple_crud/views/user_form.dart';
import 'package:simple_crud/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Users(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoutes.HOME,
        routes: {
          AppRoutes.HOME: (context) => const UserList(),
          AppRoutes.USER_FORM: (context) => UserForm(),
        },
      ),
    );
  }
}
