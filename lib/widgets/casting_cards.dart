import 'package:flutter/material.dart';
import 'package:movies_app/models/models.dart';
import 'package:movies_app/providers/fpl_provider.dart';
import 'package:provider/provider.dart';

class CastingCards extends StatelessWidget {
  final int teamId;

  const CastingCards({super.key, required this.teamId});

  @override
  Widget build(BuildContext context) {
    final fplProvider = Provider.of<FplProvider>(context, listen: false);
    final squad =
        fplProvider.allPlayers.where((p) => p.team == teamId).toList();

    return Container(
      margin: const EdgeInsets.only(bottom: 30, top: 10),
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        itemCount: squad.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) =>
            _PlayerCard(player: squad[index]),
      ),
    );
  }
}

class _PlayerCard extends StatelessWidget {
  final Player player;

  const _PlayerCard({required this.player});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'details', arguments: player),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 110,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage('assets/no-image.jpg'),
                image: NetworkImage(player.fullPicturePath),
                imageErrorBuilder: (_, __, ___) =>
                    Image.asset('assets/no-image.jpg', fit: BoxFit.cover),
                height: 140,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              player.webName ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
