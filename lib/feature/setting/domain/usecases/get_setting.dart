import 'package:dartz/dartz.dart';
import 'package:app2323/core/error/failures.dart';
import 'package:app2323/core/usecases/usecase.dart';
import 'package:app2323/feature/setting/domain/entities/setting.dart';
import 'package:app2323/feature/setting/domain/repositories/setting_repository.dart';

class GetSetting implements UseCase<Setting, NoParams> {
  final SettingRepository settingRepository;

  GetSetting(this.settingRepository);

  @override
  Future<Either<Failure, Setting>> call(NoParams noParams) async {
    return await settingRepository.getSetting();
  }
}
