import 'package:json_annotation/json_annotation.dart';
import 'dart:async';

import './location_fact.dart';
import 'package:location_app_module1/endpoint.dart';
part 'location.g.dart';

@JsonSerializable()
class Location {
  final int? id;
  final String? name;
  final String? url;
  final List<LocationFact>? facts;
  Location({this.id, this.name, this.url, this.facts});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

//   static Future<List<Location>> fetchAll() async {
//     var uri = Endpoint.uri('/locations');
//     final resp = await http.get(uri.toString());

//     if (resp.statusCode != 200) {
//       throw (resp.body);
//     }
//     List<Location> list = new List<Location>();
//     for (var jsonItem in json.decode(resp.body)) {
//       list.add(Location.fromJson(jsonItem));
//     }
//     return list;
//   }
}
