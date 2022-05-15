part of 'common_bloc.dart';

class CommonState extends Equatable {
  final AppTheme currentTheme;

  const CommonState({
    required this.currentTheme,
  });

  @override
  List<Object> get props => [currentTheme];

  CommonState copyWith({
    AppTheme? theme,
  }) =>
      CommonState(
        currentTheme: theme ?? currentTheme,
      );
}
