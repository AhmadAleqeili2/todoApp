import 'package:app2323/core/enums/app_theme_mode.dart';
import 'package:equatable/equatable.dart';



class Setting extends Equatable {
  final AppThemeMode appThemeMode;

  const Setting({required this.appThemeMode});

  @override
  List<Object> get props => [appThemeMode];
}
