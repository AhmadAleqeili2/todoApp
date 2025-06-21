import 'package:APP2323/core/constants/app_strings.dart';
import 'package:APP2323/feature/setting/presentation/blocs/setting/setting_bloc.dart';
import 'package:APP2323/feature/setting/presentation/pages/widgets/cus_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingBloc, SettingState>(
      listener: (BuildContext context, SettingState settingState) {
        if (settingState is AppThemeModeChangeSuccessState) {
          context.read<SettingBloc>().add(LoadSettingEvent());
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text(AppStrings.settingPageTitle)),
        body: BlocBuilder<SettingBloc, SettingState>(
          builder: (BuildContext context, SettingState settingState) {
            if (settingState is SettingLoadSuccessState) {
              return Column(
                children: [
                  cusListTile(settingState: settingState, context: context)
                ],
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
