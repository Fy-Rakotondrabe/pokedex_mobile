class Pokemon {
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

  Pokemon({
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

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
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
