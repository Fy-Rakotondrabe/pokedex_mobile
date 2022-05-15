import 'package:equatable/equatable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pokedex_mobile/core/error/failure.dart';

abstract class UseCase<Output, Input> {
  Future<Result<Failure, Output?>> call(Input input);
}

class NoInput extends Equatable {
  @override
  List<Object> get props => [];
}
