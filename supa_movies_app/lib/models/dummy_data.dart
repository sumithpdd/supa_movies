import 'dart:convert';

import 'film.dart';

const jsonArray = '''
 [
  
  
]
''';

var dummydata = List<Map<String, dynamic>>.from(jsonDecode(jsonArray))
    .map(Film.fromJson)
    .toList();
