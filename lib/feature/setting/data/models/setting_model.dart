import 'package:APP2323/core/enums/app_theme_mode.dart';
import 'package:APP2323/feature/setting/domain/entities/setting.dart';

class SettingModel extends Setting {
  final AppThemeMode appThemeMode;
  SettingModel({required this.appThemeMode})
      : super(appThemeMode: appThemeMode);

  SettingModel copyWith({AppThemeMode? appThemeMode}) {
    return SettingModel(
      appThemeMode: appThemeMode ?? this.appThemeMode,
    );
  }
}
