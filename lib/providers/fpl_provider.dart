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

  bool isLoading = true;
  String? errorMessage;

  FplProvider() {
    getPlayers();
  }

  Future<void> getPlayers() async {
    try {
      final url = Uri.https(_baseUrl, '/api/bootstrap-static/');
      final result = await http.get(url);

      if (result.statusCode != 200) {
        errorMessage = 'Error HTTP: ${result.statusCode}';
        isLoading = false;
        notifyListeners();
        return;
      }

      final fplResponse = FplResponse.fromJson(result.body);

      teams = fplResponse.teams ?? [];
      allPlayers = fplResponse.elements ?? [];

      goalkeepers = allPlayers.where((p) => p.elementType == 1).toList();
      defenders = allPlayers.where((p) => p.elementType == 2).toList();
      midfielders = allPlayers.where((p) => p.elementType == 3).toList();
      forwards = allPlayers.where((p) => p.elementType == 4).toList();

      isLoading = false;
      notifyListeners();
    } catch (e) {
      errorMessage = 'No s\'han pogut carregar les dades';
      isLoading = false;
      notifyListeners();
    }
  }

  List<Player> getPlayersByTeam(int teamId) {
    return allPlayers.where((p) => p.team == teamId).toList();
  }

  Map<String, int> getTeamStats(int teamId) {
    final squad = getPlayersByTeam(teamId);
    int points = 0;
    int goals = 0;
    int assists = 0;

    for (var p in squad) {
      points += p.totalPoints ?? 0;
      goals += p.goalsScored ?? 0;
      assists += p.assists ?? 0;
    }

    return {
      'squadSize': squad.length,
      'points': points,
      'goals': goals,
      'assists': assists,
    };
  }
}
