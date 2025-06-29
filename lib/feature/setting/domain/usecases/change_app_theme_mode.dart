import 'package:app2323/core/enums/app_theme_mode.dart';
import 'package:dartz/dartz.dart';
import 'package:app2323/core/error/failures.dart';
import 'package:app2323/core/usecases/usecase.dart';
import 'package:app2323/feature/setting/domain/repositories/setting_repository.dart';
import 'package:equatable/equatable.dart';

class ChangeAppThemeMode implements UseCase<void, Params> {
  final SettingRepository settingRepository;

  ChangeAppThemeMode(this.settingRepository);

  @override
  Future<Either<Failure, void>> call(Params params) {
    return settingRepository.changeAppThemeMode(params.appThemeMode);
  }
}

class Params extends Equatable {
  final AppThemeMode appThemeMode;

  const Params({required this.appThemeMode});

  @override
  List<Object> get props => [appThemeMode];
}
