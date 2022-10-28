import 'package:pokedex_mobile/domain/entities/pokemon.dart';

class PokemonModel extends Pokemon {
  PokemonModel({
    required int id,
    required String num,
    required String name,
    required String img,
    required List<String> type,
    required String height,
    required String weight,
    required String candy,
    required int candyCount,
    required String egg,
    required int spawnChance,
    required String spawnTime,
    required int avgSpawns,
    required List<double> multipliers,
    required List<String> weaknesses,
    required List<String> evolutionNum,
  }) : super(
          id: id,
          num: num,
          name: name,
          img: img,
          type: type,
          height: height,
          weight: weight,
          candy: candy,
          candyCount: candyCount,
          egg: egg,
          spawnChance: spawnChance,
          spawnTime: spawnTime,
          avgSpawns: avgSpawns,
          multipliers: multipliers,
          weaknesses: weaknesses,
          evolutionNum: evolutionNum,
        );

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      id: json['id'],
      num: json['num'],
      name: json['name'],
      img: json['img'],
      type: json['type'],
      height: json['height'],
      weight: json['weight'],
      candy: json['candy'],
      candyCount: json['candy_count'],
      egg: json['egg'],
      spawnChance: json['spawn_chance'],
      spawnTime: json['spawn_time'],
      avgSpawns: json['avg_spawns'],
      multipliers: json['multipliers'],
      weaknesses: (json['weaknesses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      evolutionNum: (json['next_evolution'] as List<dynamic>)
          .map((e) => e['num'] as String)
          .toList(),
    );
  }
}
