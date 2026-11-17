import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/models.dart';

class FplProvider extends ChangeNotifier {
  final String _baseUrl = 'fantasy.premierleague.com';

  List<Team> teams = [];
  List<Player> allPlayers = [];
  List<Player> forwards = [];
  List<Player> midfielders = [];
  List<Player> defenders = [];
  List<Player> goalkeepers = [];

  FplProvider() {
    getPlayers();
  }

  getPlayers() async {
    var url = Uri.https(_baseUrl, '/api/bootstrap-static/');
    final result = await http.get(url);

    final fplResponse = FplResponse.fromJson(result.body);

    teams = fplResponse.teams ?? [];
    allPlayers = fplResponse.elements ?? [];

    // Filter players by position (1 = GK, 2 = DEF, 3 = MID, 4 = FWD)
    goalkeepers = allPlayers.where((p) => p.elementType == 1).toList();
    defenders = allPlayers.where((p) => p.elementType == 2).toList();
    midfielders = allPlayers.where((p) => p.elementType == 3).toList();
    forwards = allPlayers.where((p) => p.elementType == 4).toList();

    notifyListeners();
  }
}
