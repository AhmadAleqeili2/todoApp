import 'package:APP2323/core/enums/app_theme_mode.dart';
import 'package:dartz/dartz.dart';
import 'package:APP2323/core/error/exceptions.dart';
import 'package:APP2323/core/error/failures.dart';
import 'package:APP2323/feature/setting/data/datasources/setting_local_data_source.dart';
import 'package:APP2323/feature/setting/domain/entities/setting.dart';
import 'package:APP2323/feature/setting/domain/repositories/setting_repository.dart';

class SettingRepositoryImpl implements SettingRepository {
  final SettingLocalDataSource settingLocalDataSource;

  SettingRepositoryImpl({required this.settingLocalDataSource});

  @override
  Future<Either<Failure, Setting>> getSetting() async {
    try {
      return Right(await settingLocalDataSource.getSetting());
    } on DataBaseException {
      return Left(DataBaseFailure());
    }
  }

  @override
  Future<Either<Failure, void>> changeAppThemeMode(
      AppThemeMode appThemeMode) async {
    try {
      return Right(
          await settingLocalDataSource.changeAppThemeMode(appThemeMode));
    } on DataBaseException {
      return Left(DataBaseFailure());
    }
  }
}
