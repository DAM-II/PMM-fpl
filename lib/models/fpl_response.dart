import 'models.dart';

class FplResponse {
  final List<Chip>? chips;
  final List<Event>? events;
  final GameSettings? gameSettings;
  final GameConfig? gameConfig;
  final List<Phase>? phases;
  final List<Team>? teams;
  final int? totalPlayers;
  final List<ElementStat>? elementStats;
  final List<ElementType>? elementTypes;
  final List<Player>? elements;

  FplResponse({
    this.chips,
    this.events,
    this.gameSettings,
    this.gameConfig,
    this.phases,
    this.teams,
    this.totalPlayers,
    this.elementStats,
    this.elementTypes,
    this.elements,
  });

  factory FplResponse.fromJson(String str) =>
      FplResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FplResponse.fromMap(Map<String, dynamic> json) => FplResponse(
        chips: json["chips"] == null
            ? []
            : List<Chip>.from(json["chips"]!.map((x) => Chip.fromMap(x))),
        events: json["events"] == null
            ? []
            : List<Event>.from(json["events"]!.map((x) => Event.fromMap(x))),
        gameSettings: json["game_settings"] == null
            ? null
            : GameSettings.fromMap(json["game_settings"]),
        gameConfig: json["game_config"] == null
            ? null
            : GameConfig.fromMap(json["game_config"]),
        phases: json["phases"] == null
            ? []
            : List<Phase>.from(json["phases"]!.map((x) => Phase.fromMap(x))),
        teams: json["teams"] == null
            ? []
            : List<Team>.from(json["teams"]!.map((x) => Team.fromMap(x))),
        totalPlayers: json["total_players"],
        elementStats: json["element_stats"] == null
            ? []
            : List<ElementStat>.from(
                json["element_stats"]!.map((x) => ElementStat.fromMap(x))),
        elementTypes: json["element_types"] == null
            ? []
            : List<ElementType>.from(
                json["element_types"]!.map((x) => ElementType.fromMap(x))),
        elements: json["elements"] == null
            ? []
            : List<Player>.from(
                json["elements"]!.map((x) => Player.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "chips": chips == null
            ? []
            : List<dynamic>.from(chips!.map((x) => x.toMap())),
        "events": events == null
            ? []
            : List<dynamic>.from(events!.map((x) => x.toMap())),
        "game_settings": gameSettings?.toMap(),
        "game_config": gameConfig?.toMap(),
        "phases": phases == null
            ? []
            : List<dynamic>.from(phases!.map((x) => x.toMap())),
        "teams": teams == null
            ? []
            : List<dynamic>.from(teams!.map((x) => x.toMap())),
        "total_players": totalPlayers,
        "element_stats": elementStats == null
            ? []
            : List<dynamic>.from(elementStats!.map((x) => x.toMap())),
        "element_types": elementTypes == null
            ? []
            : List<dynamic>.from(elementTypes!.map((x) => x.toMap())),
        "elements": elements == null
            ? []
            : List<dynamic>.from(elements!.map((x) => x.toMap())),
      };
}

class Chip {
  final int? id;
  final Name? name;
  final int? number;
  final int? startEvent;
  final int? stopEvent;
  final String? chipType;
  final Overrides? overrides;

  Chip({
    this.id,
    this.name,
    this.number,
    this.startEvent,
    this.stopEvent,
    this.chipType,
    this.overrides,
  });

  factory Chip.fromJson(String str) => Chip.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Chip.fromMap(Map<String, dynamic> json) => Chip(
        id: json["id"],
        name: nameValues.map[json["name"]],
        number: json["number"],
        startEvent: json["start_event"],
        stopEvent: json["stop_event"],
        chipType: json["chip_type"],
        overrides: json["overrides"] == null
            ? null
            : Overrides.fromMap(json["overrides"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": nameValues.reverse[name],
        "number": number,
        "start_event": startEvent,
        "stop_event": stopEvent,
        "chip_type": chipType,
        "overrides": overrides?.toMap(),
      };
}

enum Name { BBOOST, FREEHIT, THE_3_XC, WILDCARD }

final nameValues = EnumValues({
  "bboost": Name.BBOOST,
  "freehit": Name.FREEHIT,
  "3xc": Name.THE_3_XC,
  "wildcard": Name.WILDCARD
});

class Overrides {
  final Rules? rules;
  final Rules? scoring;
  final List<dynamic>? elementTypes;
  final dynamic pickMultiplier;

  Overrides({
    this.rules,
    this.scoring,
    this.elementTypes,
    this.pickMultiplier,
  });

  factory Overrides.fromJson(String str) => Overrides.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Overrides.fromMap(Map<String, dynamic> json) => Overrides(
        rules: json["rules"] == null ? null : Rules.fromMap(json["rules"]),
        scoring:
            json["scoring"] == null ? null : Rules.fromMap(json["scoring"]),
        elementTypes: json["element_types"] == null
            ? []
            : List<dynamic>.from(json["element_types"]!.map((x) => x)),
        pickMultiplier: json["pick_multiplier"],
      );

  Map<String, dynamic> toMap() => {
        "rules": rules?.toMap(),
        "scoring": scoring?.toMap(),
        "element_types": elementTypes == null
            ? []
            : List<dynamic>.from(elementTypes!.map((x) => x)),
        "pick_multiplier": pickMultiplier,
      };
}

class Rules {
  Rules();

  factory Rules.fromJson(String str) => Rules.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Rules.fromMap(Map<String, dynamic> json) => Rules();

  Map<String, dynamic> toMap() => {};
}

class ElementStat {
  final String? label;
  final String? name;

  ElementStat({
    this.label,
    this.name,
  });

  factory ElementStat.fromJson(String str) =>
      ElementStat.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ElementStat.fromMap(Map<String, dynamic> json) => ElementStat(
        label: json["label"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "label": label,
        "name": name,
      };
}

class ElementType {
  final int? id;
  final String? pluralName;
  final String? pluralNameShort;
  final String? singularName;
  final String? singularNameShort;
  final int? squadSelect;
  final dynamic squadMinSelect;
  final dynamic squadMaxSelect;
  final int? squadMinPlay;
  final int? squadMaxPlay;
  final bool? uiShirtSpecific;
  final List<int>? subPositionsLocked;
  final int? elementCount;

  ElementType({
    this.id,
    this.pluralName,
    this.pluralNameShort,
    this.singularName,
    this.singularNameShort,
    this.squadSelect,
    this.squadMinSelect,
    this.squadMaxSelect,
    this.squadMinPlay,
    this.squadMaxPlay,
    this.uiShirtSpecific,
    this.subPositionsLocked,
    this.elementCount,
  });

  factory ElementType.fromJson(String str) =>
      ElementType.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ElementType.fromMap(Map<String, dynamic> json) => ElementType(
        id: json["id"],
        pluralName: json["plural_name"],
        pluralNameShort: json["plural_name_short"],
        singularName: json["singular_name"],
        singularNameShort: json["singular_name_short"],
        squadSelect: json["squad_select"],
        squadMinSelect: json["squad_min_select"],
        squadMaxSelect: json["squad_max_select"],
        squadMinPlay: json["squad_min_play"],
        squadMaxPlay: json["squad_max_play"],
        uiShirtSpecific: json["ui_shirt_specific"],
        subPositionsLocked: json["sub_positions_locked"] == null
            ? []
            : List<int>.from(json["sub_positions_locked"]!.map((x) => x)),
        elementCount: json["element_count"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "plural_name": pluralName,
        "plural_name_short": pluralNameShort,
        "singular_name": singularName,
        "singular_name_short": singularNameShort,
        "squad_select": squadSelect,
        "squad_min_select": squadMinSelect,
        "squad_max_select": squadMaxSelect,
        "squad_min_play": squadMinPlay,
        "squad_max_play": squadMaxPlay,
        "ui_shirt_specific": uiShirtSpecific,
        "sub_positions_locked": subPositionsLocked == null
            ? []
            : List<dynamic>.from(subPositionsLocked!.map((x) => x)),
        "element_count": elementCount,
      };
}

class PriceChangeProjection {
  final int? offset;
  final String? projectedPercent;
  final int? likelihood;

  PriceChangeProjection({
    this.offset,
    this.projectedPercent,
    this.likelihood,
  });

  factory PriceChangeProjection.fromJson(String str) =>
      PriceChangeProjection.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PriceChangeProjection.fromMap(Map<String, dynamic> json) =>
      PriceChangeProjection(
        offset: json["offset"],
        projectedPercent: json["projected_percent"],
        likelihood: json["likelihood"],
      );

  Map<String, dynamic> toMap() => {
        "offset": offset,
        "projected_percent": projectedPercent,
        "likelihood": likelihood,
      };
}

class ScoutRisk {
  final Property? property;
  final String? notes;
  final int? gameweek;
  final dynamic url;

  ScoutRisk({
    this.property,
    this.notes,
    this.gameweek,
    this.url,
  });

  factory ScoutRisk.fromJson(String str) => ScoutRisk.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ScoutRisk.fromMap(Map<String, dynamic> json) => ScoutRisk(
        property: propertyValues.map[json["property"]],
        notes: json["notes"],
        gameweek: json["gameweek"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "property": propertyValues.reverse[property],
        "notes": notes,
        "gameweek": gameweek,
        "url": url,
      };
}

enum Property { LOAN_INELIGIBLE, SUSPENSION_RISK }

final propertyValues = EnumValues({
  "loan_ineligible": Property.LOAN_INELIGIBLE,
  "suspension_risk": Property.SUSPENSION_RISK
});

enum StatusEnum { A, D, I, S, U }

final statusEnumValues = EnumValues({
  "a": StatusEnum.A,
  "d": StatusEnum.D,
  "i": StatusEnum.I,
  "s": StatusEnum.S,
  "u": StatusEnum.U
});

class Event {
  final int? id;
  final String? name;
  final DateTime? deadlineTime;
  final dynamic releaseTime;
  final int? averageEntryScore;
  final bool? finished;
  final bool? dataChecked;
  final int? highestScoringEntry;
  final int? deadlineTimeEpoch;
  final int? deadlineTimeGameOffset;
  final int? highestScore;
  final bool? isPrevious;
  final bool? isCurrent;
  final bool? isNext;
  final bool? cupLeaguesCreated;
  final bool? h2HKoMatchesCreated;
  final bool? canEnter;
  final bool? canManage;
  final bool? released;
  final int? rankedCount;
  final Overrides? overrides;
  final List<ChipPlay>? chipPlays;
  final int? mostSelected;
  final int? mostTransferredIn;
  final int? topElement;
  final TopElementInfo? topElementInfo;
  final int? transfersMade;
  final int? mostCaptained;
  final int? mostViceCaptained;

  Event({
    this.id,
    this.name,
    this.deadlineTime,
    this.releaseTime,
    this.averageEntryScore,
    this.finished,
    this.dataChecked,
    this.highestScoringEntry,
    this.deadlineTimeEpoch,
    this.deadlineTimeGameOffset,
    this.highestScore,
    this.isPrevious,
    this.isCurrent,
    this.isNext,
    this.cupLeaguesCreated,
    this.h2HKoMatchesCreated,
    this.canEnter,
    this.canManage,
    this.released,
    this.rankedCount,
    this.overrides,
    this.chipPlays,
    this.mostSelected,
    this.mostTransferredIn,
    this.topElement,
    this.topElementInfo,
    this.transfersMade,
    this.mostCaptained,
    this.mostViceCaptained,
  });

  factory Event.fromJson(String str) => Event.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Event.fromMap(Map<String, dynamic> json) => Event(
        id: json["id"],
        name: json["name"],
        deadlineTime: json["deadline_time"] == null
            ? null
            : DateTime.parse(json["deadline_time"]),
        releaseTime: json["release_time"],
        averageEntryScore: json["average_entry_score"],
        finished: json["finished"],
        dataChecked: json["data_checked"],
        highestScoringEntry: json["highest_scoring_entry"],
        deadlineTimeEpoch: json["deadline_time_epoch"],
        deadlineTimeGameOffset: json["deadline_time_game_offset"],
        highestScore: json["highest_score"],
        isPrevious: json["is_previous"],
        isCurrent: json["is_current"],
        isNext: json["is_next"],
        cupLeaguesCreated: json["cup_leagues_created"],
        h2HKoMatchesCreated: json["h2h_ko_matches_created"],
        canEnter: json["can_enter"],
        canManage: json["can_manage"],
        released: json["released"],
        rankedCount: json["ranked_count"],
        overrides: json["overrides"] == null
            ? null
            : Overrides.fromMap(json["overrides"]),
        chipPlays: json["chip_plays"] == null
            ? []
            : List<ChipPlay>.from(
                json["chip_plays"]!.map((x) => ChipPlay.fromMap(x))),
        mostSelected: json["most_selected"],
        mostTransferredIn: json["most_transferred_in"],
        topElement: json["top_element"],
        topElementInfo: json["top_element_info"] == null
            ? null
            : TopElementInfo.fromMap(json["top_element_info"]),
        transfersMade: json["transfers_made"],
        mostCaptained: json["most_captained"],
        mostViceCaptained: json["most_vice_captained"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "deadline_time": deadlineTime?.toIso8601String(),
        "release_time": releaseTime,
        "average_entry_score": averageEntryScore,
        "finished": finished,
        "data_checked": dataChecked,
        "highest_scoring_entry": highestScoringEntry,
        "deadline_time_epoch": deadlineTimeEpoch,
        "deadline_time_game_offset": deadlineTimeGameOffset,
        "highest_score": highestScore,
        "is_previous": isPrevious,
        "is_current": isCurrent,
        "is_next": isNext,
        "cup_leagues_created": cupLeaguesCreated,
        "h2h_ko_matches_created": h2HKoMatchesCreated,
        "can_enter": canEnter,
        "can_manage": canManage,
        "released": released,
        "ranked_count": rankedCount,
        "overrides": overrides?.toMap(),
        "chip_plays": chipPlays == null
            ? []
            : List<dynamic>.from(chipPlays!.map((x) => x.toMap())),
        "most_selected": mostSelected,
        "most_transferred_in": mostTransferredIn,
        "top_element": topElement,
        "top_element_info": topElementInfo?.toMap(),
        "transfers_made": transfersMade,
        "most_captained": mostCaptained,
        "most_vice_captained": mostViceCaptained,
      };
}

class ChipPlay {
  final Name? chipName;
  final int? numPlayed;

  ChipPlay({
    this.chipName,
    this.numPlayed,
  });

  factory ChipPlay.fromJson(String str) => ChipPlay.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ChipPlay.fromMap(Map<String, dynamic> json) => ChipPlay(
        chipName: nameValues.map[json["chip_name"]],
        numPlayed: json["num_played"],
      );

  Map<String, dynamic> toMap() => {
        "chip_name": nameValues.reverse[chipName],
        "num_played": numPlayed,
      };
}

class TopElementInfo {
  final int? id;
  final int? points;

  TopElementInfo({
    this.id,
    this.points,
  });

  factory TopElementInfo.fromJson(String str) =>
      TopElementInfo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TopElementInfo.fromMap(Map<String, dynamic> json) => TopElementInfo(
        id: json["id"],
        points: json["points"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "points": points,
      };
}

class GameConfig {
  final Settings? settings;
  final GameSettings? rules;
  final StatusClass? status;
  final Scoring? scoring;

  GameConfig({
    this.settings,
    this.rules,
    this.status,
    this.scoring,
  });

  factory GameConfig.fromJson(String str) =>
      GameConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GameConfig.fromMap(Map<String, dynamic> json) => GameConfig(
        settings: json["settings"] == null
            ? null
            : Settings.fromMap(json["settings"]),
        rules:
            json["rules"] == null ? null : GameSettings.fromMap(json["rules"]),
        status:
            json["status"] == null ? null : StatusClass.fromMap(json["status"]),
        scoring:
            json["scoring"] == null ? null : Scoring.fromMap(json["scoring"]),
      );

  Map<String, dynamic> toMap() => {
        "settings": settings?.toMap(),
        "rules": rules?.toMap(),
        "status": status?.toMap(),
        "scoring": scoring?.toMap(),
      };
}

class GameSettings {
  final int? leagueJoinPrivateMax;
  final int? leagueJoinPublicMax;
  final int? leagueMaxSizePublicClassic;
  final int? leagueMaxSizePublicH2H;
  final int? leagueMaxSizePrivateH2H;
  final int? leagueMaxKoRoundsPrivateH2H;
  final String? leaguePrefixPublic;
  final int? leaguePointsH2HWin;
  final int? leaguePointsH2HLose;
  final int? leaguePointsH2HDraw;
  final bool? leagueKoFirstInsteadOfRandom;
  final dynamic cupStartEventId;
  final dynamic cupStopEventId;
  final dynamic cupQualifyingMethod;
  final dynamic cupType;
  final List<dynamic>? featuredEntries;
  final bool? elementSellAtPurchasePrice;
  final List<int>? percentileRanks;
  final int? underdogDifferential;
  final int? squadSquadplay;
  final int? squadSquadsize;
  final dynamic squadSpecialMin;
  final dynamic squadSpecialMax;
  final int? squadTeamLimit;
  final int? squadTotalSpend;
  final int? uiCurrencyMultiplier;
  final bool? uiUseSpecialShirts;
  final List<dynamic>? uiSpecialShirtExclusions;
  final int? statsFormDays;
  final bool? sysViceCaptainEnabled;
  final int? transfersCap;
  final double? transfersSellOnFee;
  final int? maxExtraFreeTransfers;
  final List<String>? leagueH2HTiebreakStats;
  final String? timezone;

  GameSettings({
    this.leagueJoinPrivateMax,
    this.leagueJoinPublicMax,
    this.leagueMaxSizePublicClassic,
    this.leagueMaxSizePublicH2H,
    this.leagueMaxSizePrivateH2H,
    this.leagueMaxKoRoundsPrivateH2H,
    this.leaguePrefixPublic,
    this.leaguePointsH2HWin,
    this.leaguePointsH2HLose,
    this.leaguePointsH2HDraw,
    this.leagueKoFirstInsteadOfRandom,
    this.cupStartEventId,
    this.cupStopEventId,
    this.cupQualifyingMethod,
    this.cupType,
    this.featuredEntries,
    this.elementSellAtPurchasePrice,
    this.percentileRanks,
    this.underdogDifferential,
    this.squadSquadplay,
    this.squadSquadsize,
    this.squadSpecialMin,
    this.squadSpecialMax,
    this.squadTeamLimit,
    this.squadTotalSpend,
    this.uiCurrencyMultiplier,
    this.uiUseSpecialShirts,
    this.uiSpecialShirtExclusions,
    this.statsFormDays,
    this.sysViceCaptainEnabled,
    this.transfersCap,
    this.transfersSellOnFee,
    this.maxExtraFreeTransfers,
    this.leagueH2HTiebreakStats,
    this.timezone,
  });

  factory GameSettings.fromJson(String str) =>
      GameSettings.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GameSettings.fromMap(Map<String, dynamic> json) => GameSettings(
        leagueJoinPrivateMax: json["league_join_private_max"],
        leagueJoinPublicMax: json["league_join_public_max"],
        leagueMaxSizePublicClassic: json["league_max_size_public_classic"],
        leagueMaxSizePublicH2H: json["league_max_size_public_h2h"],
        leagueMaxSizePrivateH2H: json["league_max_size_private_h2h"],
        leagueMaxKoRoundsPrivateH2H: json["league_max_ko_rounds_private_h2h"],
        leaguePrefixPublic: json["league_prefix_public"],
        leaguePointsH2HWin: json["league_points_h2h_win"],
        leaguePointsH2HLose: json["league_points_h2h_lose"],
        leaguePointsH2HDraw: json["league_points_h2h_draw"],
        leagueKoFirstInsteadOfRandom: json["league_ko_first_instead_of_random"],
        cupStartEventId: json["cup_start_event_id"],
        cupStopEventId: json["cup_stop_event_id"],
        cupQualifyingMethod: json["cup_qualifying_method"],
        cupType: json["cup_type"],
        featuredEntries: json["featured_entries"] == null
            ? []
            : List<dynamic>.from(json["featured_entries"]!.map((x) => x)),
        elementSellAtPurchasePrice: json["element_sell_at_purchase_price"],
        percentileRanks: json["percentile_ranks"] == null
            ? []
            : List<int>.from(json["percentile_ranks"]!.map((x) => x)),
        underdogDifferential: json["underdog_differential"],
        squadSquadplay: json["squad_squadplay"],
        squadSquadsize: json["squad_squadsize"],
        squadSpecialMin: json["squad_special_min"],
        squadSpecialMax: json["squad_special_max"],
        squadTeamLimit: json["squad_team_limit"],
        squadTotalSpend: json["squad_total_spend"],
        uiCurrencyMultiplier: json["ui_currency_multiplier"],
        uiUseSpecialShirts: json["ui_use_special_shirts"],
        uiSpecialShirtExclusions: json["ui_special_shirt_exclusions"] == null
            ? []
            : List<dynamic>.from(
                json["ui_special_shirt_exclusions"]!.map((x) => x)),
        statsFormDays: json["stats_form_days"],
        sysViceCaptainEnabled: json["sys_vice_captain_enabled"],
        transfersCap: json["transfers_cap"],
        transfersSellOnFee: json["transfers_sell_on_fee"]?.toDouble(),
        maxExtraFreeTransfers: json["max_extra_free_transfers"],
        leagueH2HTiebreakStats: json["league_h2h_tiebreak_stats"] == null
            ? []
            : List<String>.from(
                json["league_h2h_tiebreak_stats"]!.map((x) => x)),
        timezone: json["timezone"],
      );

  Map<String, dynamic> toMap() => {
        "league_join_private_max": leagueJoinPrivateMax,
        "league_join_public_max": leagueJoinPublicMax,
        "league_max_size_public_classic": leagueMaxSizePublicClassic,
        "league_max_size_public_h2h": leagueMaxSizePublicH2H,
        "league_max_size_private_h2h": leagueMaxSizePrivateH2H,
        "league_max_ko_rounds_private_h2h": leagueMaxKoRoundsPrivateH2H,
        "league_prefix_public": leaguePrefixPublic,
        "league_points_h2h_win": leaguePointsH2HWin,
        "league_points_h2h_lose": leaguePointsH2HLose,
        "league_points_h2h_draw": leaguePointsH2HDraw,
        "league_ko_first_instead_of_random": leagueKoFirstInsteadOfRandom,
        "cup_start_event_id": cupStartEventId,
        "cup_stop_event_id": cupStopEventId,
        "cup_qualifying_method": cupQualifyingMethod,
        "cup_type": cupType,
        "featured_entries": featuredEntries == null
            ? []
            : List<dynamic>.from(featuredEntries!.map((x) => x)),
        "element_sell_at_purchase_price": elementSellAtPurchasePrice,
        "percentile_ranks": percentileRanks == null
            ? []
            : List<dynamic>.from(percentileRanks!.map((x) => x)),
        "underdog_differential": underdogDifferential,
        "squad_squadplay": squadSquadplay,
        "squad_squadsize": squadSquadsize,
        "squad_special_min": squadSpecialMin,
        "squad_special_max": squadSpecialMax,
        "squad_team_limit": squadTeamLimit,
        "squad_total_spend": squadTotalSpend,
        "ui_currency_multiplier": uiCurrencyMultiplier,
        "ui_use_special_shirts": uiUseSpecialShirts,
        "ui_special_shirt_exclusions": uiSpecialShirtExclusions == null
            ? []
            : List<dynamic>.from(uiSpecialShirtExclusions!.map((x) => x)),
        "stats_form_days": statsFormDays,
        "sys_vice_captain_enabled": sysViceCaptainEnabled,
        "transfers_cap": transfersCap,
        "transfers_sell_on_fee": transfersSellOnFee,
        "max_extra_free_transfers": maxExtraFreeTransfers,
        "league_h2h_tiebreak_stats": leagueH2HTiebreakStats == null
            ? []
            : List<dynamic>.from(leagueH2HTiebreakStats!.map((x) => x)),
        "timezone": timezone,
      };
}

class Scoring {
  final int? longPlay;
  final int? shortPlay;
  final Map<String, int>? goalsConceded;
  final int? saves;
  final Map<String, int>? goalsScored;
  final int? assists;
  final Map<String, int>? cleanSheets;
  final int? penaltiesSaved;
  final int? penaltiesMissed;
  final int? yellowCards;
  final int? redCards;
  final int? ownGoals;
  final int? bonus;
  final int? bps;
  final int? influence;
  final int? creativity;
  final int? threat;
  final int? ictIndex;
  final int? specialMultiplier;
  final int? tackles;
  final int? clearancesBlocksInterceptions;
  final int? recoveries;
  final Map<String, int>? defensiveContribution;
  final int? starts;
  final Map<String, int>? mngGoalsScored;
  final Map<String, int>? mngCleanSheets;
  final Map<String, int>? mngWin;
  final Map<String, int>? mngDraw;
  final int? mngLoss;
  final Map<String, int>? mngUnderdogWin;
  final Map<String, int>? mngUnderdogDraw;
  final int? expectedAssists;
  final int? expectedGoalInvolvements;
  final int? expectedGoalsConceded;
  final int? expectedGoals;

  Scoring({
    this.longPlay,
    this.shortPlay,
    this.goalsConceded,
    this.saves,
    this.goalsScored,
    this.assists,
    this.cleanSheets,
    this.penaltiesSaved,
    this.penaltiesMissed,
    this.yellowCards,
    this.redCards,
    this.ownGoals,
    this.bonus,
    this.bps,
    this.influence,
    this.creativity,
    this.threat,
    this.ictIndex,
    this.specialMultiplier,
    this.tackles,
    this.clearancesBlocksInterceptions,
    this.recoveries,
    this.defensiveContribution,
    this.starts,
    this.mngGoalsScored,
    this.mngCleanSheets,
    this.mngWin,
    this.mngDraw,
    this.mngLoss,
    this.mngUnderdogWin,
    this.mngUnderdogDraw,
    this.expectedAssists,
    this.expectedGoalInvolvements,
    this.expectedGoalsConceded,
    this.expectedGoals,
  });

  factory Scoring.fromJson(String str) => Scoring.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Scoring.fromMap(Map<String, dynamic> json) => Scoring(
        longPlay: json["long_play"],
        shortPlay: json["short_play"],
        goalsConceded: Map.from(json["goals_conceded"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        saves: json["saves"],
        goalsScored: Map.from(json["goals_scored"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        assists: json["assists"],
        cleanSheets: Map.from(json["clean_sheets"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        penaltiesSaved: json["penalties_saved"],
        penaltiesMissed: json["penalties_missed"],
        yellowCards: json["yellow_cards"],
        redCards: json["red_cards"],
        ownGoals: json["own_goals"],
        bonus: json["bonus"],
        bps: json["bps"],
        influence: json["influence"],
        creativity: json["creativity"],
        threat: json["threat"],
        ictIndex: json["ict_index"],
        specialMultiplier: json["special_multiplier"],
        tackles: json["tackles"],
        clearancesBlocksInterceptions: json["clearances_blocks_interceptions"],
        recoveries: json["recoveries"],
        defensiveContribution: Map.from(json["defensive_contribution"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        starts: json["starts"],
        mngGoalsScored: Map.from(json["mng_goals_scored"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        mngCleanSheets: Map.from(json["mng_clean_sheets"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        mngWin: Map.from(json["mng_win"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        mngDraw: Map.from(json["mng_draw"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        mngLoss: json["mng_loss"],
        mngUnderdogWin: Map.from(json["mng_underdog_win"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        mngUnderdogDraw: Map.from(json["mng_underdog_draw"]!)
            .map((k, v) => MapEntry<String, int>(k, v)),
        expectedAssists: json["expected_assists"],
        expectedGoalInvolvements: json["expected_goal_involvements"],
        expectedGoalsConceded: json["expected_goals_conceded"],
        expectedGoals: json["expected_goals"],
      );

  Map<String, dynamic> toMap() => {
        "long_play": longPlay,
        "short_play": shortPlay,
        "goals_conceded": Map.from(goalsConceded!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "saves": saves,
        "goals_scored": Map.from(goalsScored!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "assists": assists,
        "clean_sheets": Map.from(cleanSheets!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "penalties_saved": penaltiesSaved,
        "penalties_missed": penaltiesMissed,
        "yellow_cards": yellowCards,
        "red_cards": redCards,
        "own_goals": ownGoals,
        "bonus": bonus,
        "bps": bps,
        "influence": influence,
        "creativity": creativity,
        "threat": threat,
        "ict_index": ictIndex,
        "special_multiplier": specialMultiplier,
        "tackles": tackles,
        "clearances_blocks_interceptions": clearancesBlocksInterceptions,
        "recoveries": recoveries,
        "defensive_contribution": Map.from(defensiveContribution!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "starts": starts,
        "mng_goals_scored": Map.from(mngGoalsScored!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "mng_clean_sheets": Map.from(mngCleanSheets!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "mng_win":
            Map.from(mngWin!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "mng_draw":
            Map.from(mngDraw!).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "mng_loss": mngLoss,
        "mng_underdog_win": Map.from(mngUnderdogWin!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "mng_underdog_draw": Map.from(mngUnderdogDraw!)
            .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "expected_assists": expectedAssists,
        "expected_goal_involvements": expectedGoalInvolvements,
        "expected_goals_conceded": expectedGoalsConceded,
        "expected_goals": expectedGoals,
      };
}

class Settings {
  final bool? entryPerEvent;
  final String? timezone;
  final String? staticContentUrl;
  final List<DateTime>? priceChangeDeadlines;

  Settings({
    this.entryPerEvent,
    this.timezone,
    this.staticContentUrl,
    this.priceChangeDeadlines,
  });

  factory Settings.fromJson(String str) => Settings.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Settings.fromMap(Map<String, dynamic> json) => Settings(
        entryPerEvent: json["entry_per_event"],
        timezone: json["timezone"],
        staticContentUrl: json["static_content_url"],
        priceChangeDeadlines: json["price_change_deadlines"] == null
            ? []
            : List<DateTime>.from(
                json["price_change_deadlines"]!.map((x) => DateTime.parse(x))),
      );

  Map<String, dynamic> toMap() => {
        "entry_per_event": entryPerEvent,
        "timezone": timezone,
        "static_content_url": staticContentUrl,
        "price_change_deadlines": priceChangeDeadlines == null
            ? []
            : List<dynamic>.from(
                priceChangeDeadlines!.map((x) => x.toIso8601String())),
      };
}

class StatusClass {
  final DateTime? priceChangeLastUpdated;

  StatusClass({
    this.priceChangeLastUpdated,
  });

  factory StatusClass.fromJson(String str) =>
      StatusClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StatusClass.fromMap(Map<String, dynamic> json) => StatusClass(
        priceChangeLastUpdated: json["price_change_last_updated"] == null
            ? null
            : DateTime.parse(json["price_change_last_updated"]),
      );

  Map<String, dynamic> toMap() => {
        "price_change_last_updated": priceChangeLastUpdated?.toIso8601String(),
      };
}

class Phase {
  final int? id;
  final String? name;
  final int? startEvent;
  final int? stopEvent;
  final int? highestScore;

  Phase({
    this.id,
    this.name,
    this.startEvent,
    this.stopEvent,
    this.highestScore,
  });

  factory Phase.fromJson(String str) => Phase.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Phase.fromMap(Map<String, dynamic> json) => Phase(
        id: json["id"],
        name: json["name"],
        startEvent: json["start_event"],
        stopEvent: json["stop_event"],
        highestScore: json["highest_score"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "start_event": startEvent,
        "stop_event": stopEvent,
        "highest_score": highestScore,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
