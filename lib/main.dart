import 'package:APP2323/core/constants/app_strings.dart';
import 'package:APP2323/core/enums/app_theme_mode.dart';
import 'package:APP2323/core/presentation/loading_page.dart';
import 'package:APP2323/config/theme/dark_theme_data.dart';
import 'package:APP2323/config/theme/light_theme_data.dart';
import 'package:APP2323/feature/todo/presentation/blocs/todo_form/todo_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/presentation/some_went_wrong_page.dart';
import 'config/route/route.dart';
import 'feature/setting/presentation/blocs/setting/setting_bloc.dart';
import 'feature/todo/presentation/blocs/todo/todo_bloc.dart';
import 'feature/todo/presentation/pages/todo_home_page.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<SettingBloc>(
          create: (context) => sl<SettingBloc>()..add(LoadSettingEvent()),
        ),
        BlocProvider<TodoFormBloc>(
          create: (context) => sl<TodoFormBloc>(),
        ),
        BlocProvider<TodoBloc>(
          create: (context) => sl<TodoBloc>()..add(GetTodoListEvent()),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (BuildContext context, SettingState settingState) {
        if (settingState is SettingLoadingState ||
            settingState is SettingInitial) {
          return MaterialApp(
            theme: lightThemeData,
            home: LoadingPage(),
          );
        } else if (settingState is SettingLoadSuccessState) {
          return MaterialApp(
            title: AppStrings.title,
            theme: lightThemeData,
            themeMode: settingState.setting.appThemeMode == AppThemeMode.dark
                ? ThemeMode.dark
                : ThemeMode.light,
            darkTheme: darkThemeData,
            home: TodoHomePage(),
            onGenerateRoute: AppRouter.generateRoute,
          );
        }
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightThemeData,
          home: SomeThingWentWrongPage(),
        );
      },
    );
  }
}
