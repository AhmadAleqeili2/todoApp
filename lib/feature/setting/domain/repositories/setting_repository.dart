import 'package:app2323/core/enums/app_theme_mode.dart';
import 'package:dartz/dartz.dart';
import 'package:app2323/core/error/failures.dart';
import 'package:app2323/feature/setting/domain/entities/setting.dart';

abstract class SettingRepository {
  Future<Either<Failure, Setting>> getSetting();

  Future<Either<Failure, void>> changeAppThemeMode(AppThemeMode appThemeMode);
}
