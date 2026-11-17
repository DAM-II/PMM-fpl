import 'models.dart';

class Player {
  final bool? canTransact;
  final bool? canSelect;
  final int? chanceOfPlayingNextRound;
  final int? chanceOfPlayingThisRound;
  final int? code;
  final int? costChangeEvent;
  final int? costChangeEventFall;
  final int? costChangeStart;
  final int? costChangeStartFall;
  final String? priceChangePercent;
  final int? priceChangeHourlyRate;
  final List<PriceChangeProjection>? priceChangeProjections;
  final DateTime? priceChangeLockedUntil;
  final bool? priceChangeCalibrating;
  final int? dreamteamCount;
  final int? elementType;
  final String? epNext;
  final String? epThis;
  final int? eventPoints;
  final String? firstName;
  final String? form;
  final int? id;
  final bool? inDreamteam;
  final String? news;
  final DateTime? newsAdded;
  final int? nowCost;
  final String? photo;
  final String? pointsPerGame;
  final bool? removed;
  final String? secondName;
  final String? selectedByPercent;
  final bool? special;
  final dynamic squadNumber;
  final StatusEnum? status;
  final int? team;
  final int? teamCode;
  final int? totalPoints;
  final int? transfersIn;
  final int? transfersInEvent;
  final int? transfersOut;
  final int? transfersOutEvent;
  final String? valueForm;
  final String? valueSeason;
  final String? webName;
  final String? knownName;
  final int? region;
  final DateTime? teamJoinDate;
  final DateTime? birthDate;
  final bool? hasTemporaryCode;
  final String? optaCode;
  final int? minutes;
  final int? goalsScored;
  final int? assists;
  final int? cleanSheets;
  final int? goalsConceded;
  final int? ownGoals;
  final int? penaltiesSaved;
  final int? penaltiesMissed;
  final int? yellowCards;
  final int? redCards;
  final int? saves;
  final int? bonus;
  final int? bps;
  final String? influence;
  final String? creativity;
  final String? threat;
  final String? ictIndex;
  final int? clearancesBlocksInterceptions;
  final int? recoveries;
  final int? tackles;
  final int? defensiveContribution;
  final int? starts;
  final String? expectedGoals;
  final String? expectedAssists;
  final String? expectedGoalInvolvements;
  final String? expectedGoalsConceded;
  final int? cornersAndIndirectFreekicksOrder;
  final String? cornersAndIndirectFreekicksText;
  final int? directFreekicksOrder;
  final String? directFreekicksText;
  final int? penaltiesOrder;
  final String? penaltiesText;
  final List<ScoutRisk>? scoutRisks;
  final String? scoutNewsLink;
  final int? influenceRank;
  final int? influenceRankType;
  final int? creativityRank;
  final int? creativityRankType;
  final int? threatRank;
  final int? threatRankType;
  final int? ictIndexRank;
  final int? ictIndexRankType;
  final double? expectedGoalsPer90;
  final double? savesPer90;
  final double? expectedAssistsPer90;
  final double? expectedGoalInvolvementsPer90;
  final double? expectedGoalsConcededPer90;
  final double? goalsConcededPer90;
  final int? nowCostRank;
  final int? nowCostRankType;
  final int? formRank;
  final int? formRankType;
  final int? pointsPerGameRank;
  final int? pointsPerGameRankType;
  final int? selectedRank;
  final int? selectedRankType;
  final double? startsPer90;
  final double? cleanSheetsPer90;
  final double? defensiveContributionPer90;

  Player({
    this.canTransact,
    this.canSelect,
    this.chanceOfPlayingNextRound,
    this.chanceOfPlayingThisRound,
    this.code,
    this.costChangeEvent,
    this.costChangeEventFall,
    this.costChangeStart,
    this.costChangeStartFall,
    this.priceChangePercent,
    this.priceChangeHourlyRate,
    this.priceChangeProjections,
    this.priceChangeLockedUntil,
    this.priceChangeCalibrating,
    this.dreamteamCount,
    this.elementType,
    this.epNext,
    this.epThis,
    this.eventPoints,
    this.firstName,
    this.form,
    this.id,
    this.inDreamteam,
    this.news,
    this.newsAdded,
    this.nowCost,
    this.photo,
    this.pointsPerGame,
    this.removed,
    this.secondName,
    this.selectedByPercent,
    this.special,
    this.squadNumber,
    this.status,
    this.team,
    this.teamCode,
    this.totalPoints,
    this.transfersIn,
    this.transfersInEvent,
    this.transfersOut,
    this.transfersOutEvent,
    this.valueForm,
    this.valueSeason,
    this.webName,
    this.knownName,
    this.region,
    this.teamJoinDate,
    this.birthDate,
    this.hasTemporaryCode,
    this.optaCode,
    this.minutes,
    this.goalsScored,
    this.assists,
    this.cleanSheets,
    this.goalsConceded,
    this.ownGoals,
    this.penaltiesSaved,
    this.penaltiesMissed,
    this.yellowCards,
    this.redCards,
    this.saves,
    this.bonus,
    this.bps,
    this.influence,
    this.creativity,
    this.threat,
    this.ictIndex,
    this.clearancesBlocksInterceptions,
    this.recoveries,
    this.tackles,
    this.defensiveContribution,
    this.starts,
    this.expectedGoals,
    this.expectedAssists,
    this.expectedGoalInvolvements,
    this.expectedGoalsConceded,
    this.cornersAndIndirectFreekicksOrder,
    this.cornersAndIndirectFreekicksText,
    this.directFreekicksOrder,
    this.directFreekicksText,
    this.penaltiesOrder,
    this.penaltiesText,
    this.scoutRisks,
    this.scoutNewsLink,
    this.influenceRank,
    this.influenceRankType,
    this.creativityRank,
    this.creativityRankType,
    this.threatRank,
    this.threatRankType,
    this.ictIndexRank,
    this.ictIndexRankType,
    this.expectedGoalsPer90,
    this.savesPer90,
    this.expectedAssistsPer90,
    this.expectedGoalInvolvementsPer90,
    this.expectedGoalsConcededPer90,
    this.goalsConcededPer90,
    this.nowCostRank,
    this.nowCostRankType,
    this.formRank,
    this.formRankType,
    this.pointsPerGameRank,
    this.pointsPerGameRankType,
    this.selectedRank,
    this.selectedRankType,
    this.startsPer90,
    this.cleanSheetsPer90,
    this.defensiveContributionPer90,
  });

  get fullPicturePath {
    if (code != null) {
      return 'https://resources.premierleague.com/premierleague25/photos/players/110x140/$code.png';
    }
    return 'https://placehold.co/600x400';
  }

  factory Player.fromJson(String str) => Player.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Player.fromMap(Map<String, dynamic> json) => Player(
        canTransact: json["can_transact"],
        canSelect: json["can_select"],
        chanceOfPlayingNextRound: json["chance_of_playing_next_round"],
        chanceOfPlayingThisRound: json["chance_of_playing_this_round"],
        code: json["code"],
        costChangeEvent: json["cost_change_event"],
        costChangeEventFall: json["cost_change_event_fall"],
        costChangeStart: json["cost_change_start"],
        costChangeStartFall: json["cost_change_start_fall"],
        priceChangePercent: json["price_change_percent"],
        priceChangeHourlyRate: json["price_change_hourly_rate"],
        priceChangeProjections: json["price_change_projections"] == null
            ? []
            : List<PriceChangeProjection>.from(json["price_change_projections"]!
                .map((x) => PriceChangeProjection.fromMap(x))),
        priceChangeLockedUntil: json["price_change_locked_until"] == null
            ? null
            : DateTime.parse(json["price_change_locked_until"]),
        priceChangeCalibrating: json["price_change_calibrating"],
        dreamteamCount: json["dreamteam_count"],
        elementType: json["element_type"],
        epNext: json["ep_next"],
        epThis: json["ep_this"],
        eventPoints: json["event_points"],
        firstName: json["first_name"],
        form: json["form"],
        id: json["id"],
        inDreamteam: json["in_dreamteam"],
        news: json["news"],
        newsAdded: json["news_added"] == null
            ? null
            : DateTime.parse(json["news_added"]),
        nowCost: json["now_cost"],
        photo: json["photo"],
        pointsPerGame: json["points_per_game"],
        removed: json["removed"],
        secondName: json["second_name"],
        selectedByPercent: json["selected_by_percent"],
        special: json["special"],
        squadNumber: json["squad_number"],
        status: statusEnumValues.map[json["status"]],
        team: json["team"],
        teamCode: json["team_code"],
        totalPoints: json["total_points"],
        transfersIn: json["transfers_in"],
        transfersInEvent: json["transfers_in_event"],
        transfersOut: json["transfers_out"],
        transfersOutEvent: json["transfers_out_event"],
        valueForm: json["value_form"],
        valueSeason: json["value_season"],
        webName: json["web_name"],
        knownName: json["known_name"],
        region: json["region"],
        teamJoinDate: json["team_join_date"] == null
            ? null
            : DateTime.parse(json["team_join_date"]),
        birthDate: json["birth_date"] == null
            ? null
            : DateTime.parse(json["birth_date"]),
        hasTemporaryCode: json["has_temporary_code"],
        optaCode: json["opta_code"],
        minutes: json["minutes"],
        goalsScored: json["goals_scored"],
        assists: json["assists"],
        cleanSheets: json["clean_sheets"],
        goalsConceded: json["goals_conceded"],
        ownGoals: json["own_goals"],
        penaltiesSaved: json["penalties_saved"],
        penaltiesMissed: json["penalties_missed"],
        yellowCards: json["yellow_cards"],
        redCards: json["red_cards"],
        saves: json["saves"],
        bonus: json["bonus"],
        bps: json["bps"],
        influence: json["influence"],
        creativity: json["creativity"],
        threat: json["threat"],
        ictIndex: json["ict_index"],
        clearancesBlocksInterceptions: json["clearances_blocks_interceptions"],
        recoveries: json["recoveries"],
        tackles: json["tackles"],
        defensiveContribution: json["defensive_contribution"],
        starts: json["starts"],
        expectedGoals: json["expected_goals"],
        expectedAssists: json["expected_assists"],
        expectedGoalInvolvements: json["expected_goal_involvements"],
        expectedGoalsConceded: json["expected_goals_conceded"],
        cornersAndIndirectFreekicksOrder:
            json["corners_and_indirect_freekicks_order"],
        cornersAndIndirectFreekicksText:
            json["corners_and_indirect_freekicks_text"],
        directFreekicksOrder: json["direct_freekicks_order"],
        directFreekicksText: json["direct_freekicks_text"],
        penaltiesOrder: json["penalties_order"],
        penaltiesText: json["penalties_text"],
        scoutRisks: json["scout_risks"] == null
            ? []
            : List<ScoutRisk>.from(
                json["scout_risks"]!.map((x) => ScoutRisk.fromMap(x))),
        scoutNewsLink: json["scout_news_link"],
        influenceRank: json["influence_rank"],
        influenceRankType: json["influence_rank_type"],
        creativityRank: json["creativity_rank"],
        creativityRankType: json["creativity_rank_type"],
        threatRank: json["threat_rank"],
        threatRankType: json["threat_rank_type"],
        ictIndexRank: json["ict_index_rank"],
        ictIndexRankType: json["ict_index_rank_type"],
        expectedGoalsPer90: json["expected_goals_per_90"]?.toDouble(),
        savesPer90: json["saves_per_90"]?.toDouble(),
        expectedAssistsPer90: json["expected_assists_per_90"]?.toDouble(),
        expectedGoalInvolvementsPer90:
            json["expected_goal_involvements_per_90"]?.toDouble(),
        expectedGoalsConcededPer90:
            json["expected_goals_conceded_per_90"]?.toDouble(),
        goalsConcededPer90: json["goals_conceded_per_90"]?.toDouble(),
        nowCostRank: json["now_cost_rank"],
        nowCostRankType: json["now_cost_rank_type"],
        formRank: json["form_rank"],
        formRankType: json["form_rank_type"],
        pointsPerGameRank: json["points_per_game_rank"],
        pointsPerGameRankType: json["points_per_game_rank_type"],
        selectedRank: json["selected_rank"],
        selectedRankType: json["selected_rank_type"],
        startsPer90: json["starts_per_90"]?.toDouble(),
        cleanSheetsPer90: json["clean_sheets_per_90"]?.toDouble(),
        defensiveContributionPer90:
            json["defensive_contribution_per_90"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "can_transact": canTransact,
        "can_select": canSelect,
        "chance_of_playing_next_round": chanceOfPlayingNextRound,
        "chance_of_playing_this_round": chanceOfPlayingThisRound,
        "code": code,
        "cost_change_event": costChangeEvent,
        "cost_change_event_fall": costChangeEventFall,
        "cost_change_start": costChangeStart,
        "cost_change_start_fall": costChangeStartFall,
        "price_change_percent": priceChangePercent,
        "price_change_hourly_rate": priceChangeHourlyRate,
        "price_change_projections": priceChangeProjections == null
            ? []
            : List<dynamic>.from(priceChangeProjections!.map((x) => x.toMap())),
        "price_change_locked_until": priceChangeLockedUntil?.toIso8601String(),
        "price_change_calibrating": priceChangeCalibrating,
        "dreamteam_count": dreamteamCount,
        "element_type": elementType,
        "ep_next": epNext,
        "ep_this": epThis,
        "event_points": eventPoints,
        "first_name": firstName,
        "form": form,
        "id": id,
        "in_dreamteam": inDreamteam,
        "news": news,
        "news_added": newsAdded?.toIso8601String(),
        "now_cost": nowCost,
        "photo": photo,
        "points_per_game": pointsPerGame,
        "removed": removed,
        "second_name": secondName,
        "selected_by_percent": selectedByPercent,
        "special": special,
        "squad_number": squadNumber,
        "status": statusEnumValues.reverse[status],
        "team": team,
        "team_code": teamCode,
        "total_points": totalPoints,
        "transfers_in": transfersIn,
        "transfers_in_event": transfersInEvent,
        "transfers_out": transfersOut,
        "transfers_out_event": transfersOutEvent,
        "value_form": valueForm,
        "value_season": valueSeason,
        "web_name": webName,
        "known_name": knownName,
        "region": region,
        "team_join_date": teamJoinDate == null
            ? null
            : "${teamJoinDate!.year.toString().padLeft(4, '0')}-${teamJoinDate!.month.toString().padLeft(2, '0')}-${teamJoinDate!.day.toString().padLeft(2, '0')}",
        "birth_date": birthDate == null
            ? null
            : "${birthDate!.year.toString().padLeft(4, '0')}-${birthDate!.month.toString().padLeft(2, '0')}-${birthDate!.day.toString().padLeft(2, '0')}",
        "has_temporary_code": hasTemporaryCode,
        "opta_code": optaCode,
        "minutes": minutes,
        "goals_scored": goalsScored,
        "assists": assists,
        "clean_sheets": cleanSheets,
        "goals_conceded": goalsConceded,
        "own_goals": ownGoals,
        "penalties_saved": penaltiesSaved,
        "penalties_missed": penaltiesMissed,
        "yellow_cards": yellowCards,
        "red_cards": redCards,
        "saves": saves,
        "bonus": bonus,
        "bps": bps,
        "influence": influence,
        "creativity": creativity,
        "threat": threat,
        "ict_index": ictIndex,
        "clearances_blocks_interceptions": clearancesBlocksInterceptions,
        "recoveries": recoveries,
        "tackles": tackles,
        "defensive_contribution": defensiveContribution,
        "starts": starts,
        "expected_goals": expectedGoals,
        "expected_assists": expectedAssists,
        "expected_goal_involvements": expectedGoalInvolvements,
        "expected_goals_conceded": expectedGoalsConceded,
        "corners_and_indirect_freekicks_order":
            cornersAndIndirectFreekicksOrder,
        "corners_and_indirect_freekicks_text": cornersAndIndirectFreekicksText,
        "direct_freekicks_order": directFreekicksOrder,
        "direct_freekicks_text": directFreekicksText,
        "penalties_order": penaltiesOrder,
        "penalties_text": penaltiesText,
        "scout_risks": scoutRisks == null
            ? []
            : List<dynamic>.from(scoutRisks!.map((x) => x.toMap())),
        "scout_news_link": scoutNewsLink,
        "influence_rank": influenceRank,
        "influence_rank_type": influenceRankType,
        "creativity_rank": creativityRank,
        "creativity_rank_type": creativityRankType,
        "threat_rank": threatRank,
        "threat_rank_type": threatRankType,
        "ict_index_rank": ictIndexRank,
        "ict_index_rank_type": ictIndexRankType,
        "expected_goals_per_90": expectedGoalsPer90,
        "saves_per_90": savesPer90,
        "expected_assists_per_90": expectedAssistsPer90,
        "expected_goal_involvements_per_90": expectedGoalInvolvementsPer90,
        "expected_goals_conceded_per_90": expectedGoalsConcededPer90,
        "goals_conceded_per_90": goalsConcededPer90,
        "now_cost_rank": nowCostRank,
        "now_cost_rank_type": nowCostRankType,
        "form_rank": formRank,
        "form_rank_type": formRankType,
        "points_per_game_rank": pointsPerGameRank,
        "points_per_game_rank_type": pointsPerGameRankType,
        "selected_rank": selectedRank,
        "selected_rank_type": selectedRankType,
        "starts_per_90": startsPer90,
        "clean_sheets_per_90": cleanSheetsPer90,
        "defensive_contribution_per_90": defensiveContributionPer90,
      };
}
