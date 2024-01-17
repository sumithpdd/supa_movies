import 'dart:convert';

import 'film.dart';

const jsonArray = '''
  [
  {
    "id": 572802,
    "title": "Aquaman and the Lost Kingdom",
    "release_date": "2023-12-22",
    "backdrop_path": "/jXJxMcVoEuXzym3vFnjqDW4ifo6.jpg",
    "overview": "Black Manta, still driven by the need to avenge his father's death and wielding the power of the mythic Black Trident, will stop at nothing to take Aquaman down once and for all. To defeat him, Aquaman must turn to his imprisoned brother Orm, the former King of Atlantis, to forge an unlikely alliance in order to save the world from irreversible destruction.",
    "embedding": ""
  },
  {
    "id": 753342,
    "title": "Napoleon",
    "release_date": "2023-11-22",
    "backdrop_path": "/f1AQhx6ZfGhPZFTVKgxG91PhEYc.jpg",
    "overview": "An epic that details the checkered rise and fall of French Emperor Napoleon Bonaparte and his relentless journey to power through the prism of his addictive, volatile relationship with his wife, Josephine.",
    "embedding": ""
  },
  {
    "id": 1071215,
    "title": "Thanksgiving",
    "release_date": "2023-11-17",
    "backdrop_path": "/ktHEdqmMWC1wdfPRMRCTZe2OISL.jpg",
    "overview": "After a Black Friday riot ends in tragedy, a mysterious Thanksgiving-inspired killer terrorizes Plymouth, Massachusetts - the birthplace of the holiday. Picking off residents one by one, what begins as random revenge killings are soon revealed to be part of a larger, sinister holiday plan.",
    "embedding": ""
  },
  {
    "id": 1131755,
    "title": "A Creature Was Stirring",
    "release_date": "2023-12-08",
    "backdrop_path": "/uvqf3e451hBviQiCvPx4lapVOKf.jpg",
    "overview": "A nurse taking care of her daughter's mysterious affliction struggles to hide her secrets when uninvited strangers take shelter in her house during a lethal blizzard.",
    "embedding": ""
  },
  {
    "id": 507089,
    "title": "Five Nights at Freddy's",
    "release_date": "2023-10-27",
    "backdrop_path": "/t5zCBSB5xMDKcDqe91qahCOUYVV.jpg",
    "overview": "Recently fired and desperate for work, a troubled young man named Mike agrees to take a position as a night security guard at an abandoned theme restaurant: Freddy Fazbear's Pizzeria. But he soon discovers that nothing at Freddy's is what it seems.",
    "embedding": ""
  }
]
''';

var dummydata = List<Map<String, dynamic>>.from(jsonDecode(jsonArray))
    .map(Film.fromJson)
    .toList();
