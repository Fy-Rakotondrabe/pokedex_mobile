import 'package:multiple_result/multiple_result.dart';
import 'package:pokedex_mobile/core/error/failure.dart';
import 'package:pokedex_mobile/core/usecase/usecase.dart';
import 'package:pokedex_mobile/domain/entities/pokemon.dart';
import 'package:pokedex_mobile/domain/repositories/pokemon_repository.dart';

class GetPokemonByIdUseCase implements UseCase<Pokemon, int> {
  final PokemonRepository repository;

  const GetPokemonByIdUseCase({
    required this.repository,
  });

  @override
  Future<Result<Failure, Pokemon>> call(int id) {
    return repository.getPokemonById(id);
  }
}
