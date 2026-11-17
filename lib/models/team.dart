import 'models.dart';

class Team {
  final int? code;
  final int? draw;
  final dynamic form;
  final int? id;
  final int? loss;
  final String? name;
  final int? played;
  final int? points;
  final int? position;
  final String? shortName;
  final dynamic strength;
  final dynamic teamDivision;
  final bool? unavailable;
  final int? win;
  final String? linkUrl;
  final int? strengthOverallHome;
  final int? strengthOverallAway;
  final int? strengthAttackHome;
  final int? strengthAttackAway;
  final int? strengthDefenceHome;
  final int? strengthDefenceAway;
  final int? pulseId;

  Team({
    this.code,
    this.draw,
    this.form,
    this.id,
    this.loss,
    this.name,
    this.played,
    this.points,
    this.position,
    this.shortName,
    this.strength,
    this.teamDivision,
    this.unavailable,
    this.win,
    this.linkUrl,
    this.strengthOverallHome,
    this.strengthOverallAway,
    this.strengthAttackHome,
    this.strengthAttackAway,
    this.strengthDefenceHome,
    this.strengthDefenceAway,
    this.pulseId,
  });

  get fullBadgePath {
    if (code != null) {
      return 'https://resources.premierleague.com/premierleague/badges/t$code.png';
    }
    return 'https://placehold.co/600x400';
  }

  factory Team.fromJson(String str) => Team.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Team.fromMap(Map<String, dynamic> json) => Team(
        code: json["code"],
        draw: json["draw"],
        form: json["form"],
        id: json["id"],
        loss: json["loss"],
        name: json["name"],
        played: json["played"],
        points: json["points"],
        position: json["position"],
        shortName: json["short_name"],
        strength: json["strength"],
        teamDivision: json["team_division"],
        unavailable: json["unavailable"],
        win: json["win"],
        linkUrl: json["link_url"],
        strengthOverallHome: json["strength_overall_home"],
        strengthOverallAway: json["strength_overall_away"],
        strengthAttackHome: json["strength_attack_home"],
        strengthAttackAway: json["strength_attack_away"],
        strengthDefenceHome: json["strength_defence_home"],
        strengthDefenceAway: json["strength_defence_away"],
        pulseId: json["pulse_id"],
      );

  Map<String, dynamic> toMap() => {
        "code": code,
        "draw": draw,
        "form": form,
        "id": id,
        "loss": loss,
        "name": name,
        "played": played,
        "points": points,
        "position": position,
        "short_name": shortName,
        "strength": strength,
        "team_division": teamDivision,
        "unavailable": unavailable,
        "win": win,
        "link_url": linkUrl,
        "strength_overall_home": strengthOverallHome,
        "strength_overall_away": strengthOverallAway,
        "strength_attack_home": strengthAttackHome,
        "strength_attack_away": strengthAttackAway,
        "strength_defence_home": strengthDefenceHome,
        "strength_defence_away": strengthDefenceAway,
        "pulse_id": pulseId,
      };
}
