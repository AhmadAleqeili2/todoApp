
import 'package:APP2323/core/enums/app_theme_mode.dart';
import 'package:APP2323/feature/setting/data/models/setting_model.dart';
import 'package:APP2323/feature/setting/domain/entities/setting.dart';

abstract class SettingLocalDataSource {
  Future<Setting> getSetting();

  Future<void> changeAppThemeMode(AppThemeMode appThemeMode);
}

class SettingLocalDataSourceImpl implements SettingLocalDataSource {
  SettingLocalDataSourceImpl();

  SettingModel setting = SettingModel(appThemeMode: AppThemeMode.light);

  @override
  Future<Setting> getSetting() {
    return Future.delayed(const Duration(seconds: 1), () => setting);
  }

  @override
  Future<void> changeAppThemeMode(AppThemeMode appThemeMode) {
    return Future.delayed(const Duration(seconds: 1), () {
      setting = setting.copyWith(appThemeMode: appThemeMode);
    });
  }
}
