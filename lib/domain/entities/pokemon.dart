import 'package:equatable/equatable.dart';

class Pokemon extends Equatable {
  final int id;
  final String num;
  final String name;
  final String img;
  final List<String> type;
  final String height;
  final String weight;
  final String candy;
  final int candyCount;
  final String egg;
  final int spawnChance;
  final String spawnTime;
  final int avgSpawns;
  final List<double> multipliers;
  final List<String> weaknesses;
  final List<String> evolutionNum;

  const Pokemon({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
    required this.type,
    required this.height,
    required this.weight,
    required this.candy,
    required this.candyCount,
    required this.egg,
    required this.spawnChance,
    required this.spawnTime,
    required this.avgSpawns,
    required this.multipliers,
    required this.weaknesses,
    required this.evolutionNum,
  });

  @override
  List<Object?> get props => [
        id,
        num,
        name,
        img,
        type,
        height,
        weight,
        candy,
        candyCount,
        egg,
        spawnChance,
        spawnTime,
        avgSpawns,
        multipliers,
        weaknesses,
        evolutionNum,
      ];
}
