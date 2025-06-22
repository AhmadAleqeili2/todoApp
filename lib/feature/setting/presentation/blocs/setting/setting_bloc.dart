
import 'package:app2323/core/enums/app_theme_mode.dart';
import 'package:bloc/bloc.dart';
import 'package:app2323/core/usecases/usecase.dart';
import 'package:app2323/feature/setting/domain/entities/setting.dart';
import 'package:app2323/feature/setting/domain/usecases/change_app_theme_mode.dart';
import 'package:app2323/feature/setting/domain/usecases/get_setting.dart';
import 'package:equatable/equatable.dart';

part 'setting_event.dart';

part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc({required this.changeAppThemeMode, required this.getSetting})
      : super(SettingInitial()) {
    on<LoadSettingEvent>((event, emit) async {
      emit(SettingLoadingState());
      final getSettingFailedOrSuccess = await getSetting(NoParams());
      getSettingFailedOrSuccess.fold(
        (l) {
          emit(SettingLoadFailState());
        },
        (r) {
          emit(SettingLoadSuccessState(setting: r));
        },
      );
    });

    on<ChangeAppThemeModeEvent>((event, emit) async {
      emit(SettingLoadingState());
      final changeAppThemeModeFailedOrSuccess =
          await changeAppThemeMode(Params(appThemeMode: event.appThemeMode));
      changeAppThemeModeFailedOrSuccess.fold(
        (l) => emit(AppThemeModeChangeFailState()),
        (r) => emit(AppThemeModeChangeSuccessState()),
      );
    });
  }

  final GetSetting getSetting;
  final ChangeAppThemeMode changeAppThemeMode;
}
