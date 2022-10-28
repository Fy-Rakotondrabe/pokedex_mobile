import 'package:multiple_result/multiple_result.dart';
import 'package:pokedex_mobile/core/error/failure.dart';
import 'package:pokedex_mobile/domain/entities/pokemon.dart';

abstract class PokemonRepository {
  Future<Result<Failure, List<Pokemon>>> getAllPokemon();
  Future<Result<Failure, Pokemon>> getPokemonById(int id);
}
