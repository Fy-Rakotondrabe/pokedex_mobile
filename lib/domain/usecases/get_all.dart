import 'package:multiple_result/multiple_result.dart';
import 'package:pokedex_mobile/core/error/failure.dart';
import 'package:pokedex_mobile/core/usecase/usecase.dart';
import 'package:pokedex_mobile/domain/entities/pokemon.dart';
import 'package:pokedex_mobile/domain/repositories/pokemon_repository.dart';

class GetAllPokemonUseCase implements UseCase<List<Pokemon>, NoInput> {
  final PokemonRepository repository;

  const GetAllPokemonUseCase({
    required this.repository,
  });

  @override
  Future<Result<Failure, List<Pokemon>>> call(NoInput data) {
    return repository.getAllPokemon();
  }
}
