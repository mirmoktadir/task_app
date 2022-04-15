import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/routes/routes.dart';

import 'constants/constants.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Sans',
        primaryColor: AppColor.primaryColor,
      ),
      initialRoute: "/",
      getPages: Routes.pages,
    );
  }
}
