import 'package:APP2323/core/constants/app_strings.dart';
import 'package:APP2323/core/enums/app_theme_mode.dart';
import 'package:APP2323/feature/setting/presentation/blocs/setting/setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

ListTile cusListTile({
  required SettingLoadSuccessState settingState,
  required BuildContext context,
}) {
  return ListTile(
                    title: Text(AppStrings.appDarkMode),
                    trailing: Switch(
                      value: settingState.setting.appThemeMode ==
                          AppThemeMode.dark,
                      onChanged: (value) {
                        context.read<SettingBloc>().add(
                              ChangeAppThemeModeEvent(
                                  appThemeMode: value
                                      ? AppThemeMode.dark
                                      : AppThemeMode.light),
                            );
                      },
                    ),
                  );
}