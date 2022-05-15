import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pokedex_mobile/presentation/themes/app_theme.dart';

part 'common_event.dart';
part 'common_state.dart';

class CommonBloc extends Bloc<CommonEvent, CommonState> {
  CommonBloc()
      : super(const CommonState(
          currentTheme: AppTheme.light,
        )) {
    on<OnChangeTheme>(_onChangeTheme);
  }

  Future<void> _onChangeTheme(
    OnChangeTheme event,
    Emitter<CommonState> emit,
  ) async {
    emit(
      state.copyWith(
        theme: state.currentTheme == AppTheme.dark
            ? AppTheme.light
            : AppTheme.dark,
      ),
    );
  }
}
