import 'package:app2323/core/enums/app_theme_mode.dart';
import 'package:app2323/feature/setting/domain/entities/setting.dart';

class SettingModel extends Setting {
  const SettingModel({required AppThemeMode appThemeMode})
      : super(appThemeMode: appThemeMode);

  SettingModel copyWith({AppThemeMode? appThemeMode}) {
    return SettingModel(
      appThemeMode: appThemeMode ?? this.appThemeMode,
    );
  }
}
