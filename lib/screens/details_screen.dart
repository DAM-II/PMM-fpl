import 'package:flutter/material.dart';
import 'package:movies_app/models/models.dart';
import 'package:provider/provider.dart';
import 'package:movies_app/providers/fpl_provider.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;

    // If the user tapped a Team in CardSwiper
    if (args is Team) {
      final fplProvider = Provider.of<FplProvider>(context, listen: false);
      final teamPlayers =
          fplProvider.allPlayers.where((p) => p.team == args.id).toList();

      int totalPoints = 0;
      int totalGoals = 0;
      int totalAssists = 0;

      for (var p in teamPlayers) {
        totalPoints += p.totalPoints ?? 0;
        totalGoals += p.goalsScored ?? 0;
        totalAssists += p.assists ?? 0;
      }

      final style = Theme.of(context).textTheme.titleMedium;

      return Scaffold(
        appBar: AppBar(
          title: Text(args.name ?? 'Team Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  args.fullBadgePath,
                  height: 150,
                  errorBuilder: (_, __, ___) =>
                      Image.asset('assets/no-image.jpg', height: 150),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '${args.name ?? ''} (${args.shortName ?? ''})',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 15),
              Text('Squad Players: ${teamPlayers.length}', style: style),
              const SizedBox(height: 8),
              Text('Total FPL Points: $totalPoints', style: style),
              const SizedBox(height: 8),
              Text('Total Goals Scored: $totalGoals', style: style),
              const SizedBox(height: 8),
              Text('Total Assists: $totalAssists', style: style),
            ],
          ),
        ),
      );
    }

    // Otherwise, the user tapped a Player in one of the sliders
    final Player player = args as Player;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(player: player),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _PosterAndTitle(player: player),
                _PlayerStats(player: player),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  final Player player;

  const _CustomAppBar({required this.player});
  @override
  Widget build(BuildContext context) {
    // Exactament igual que la AppBaer però amb bon comportament davant scroll
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            player.webName ?? '',
            style: TextStyle(fontSize: 16),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(player.fullPicturePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  final Player player;

  const _PosterAndTitle({required this.player});
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final price = ((player.nowCost ?? 0) / 10).toStringAsFixed(1);

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(player.fullPicturePath),
              imageErrorBuilder: (_, __, ___) =>
                  Image.asset('assets/no-image.jpg', fit: BoxFit.cover),
              height: 150,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${player.firstName ?? ''} ${player.secondName ?? ''}',
                  style: textTheme.headlineSmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  'Price: £${price}m',
                  style: textTheme.titleMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Row(
                  children: [
                    const Icon(Icons.star_outline,
                        size: 15, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text('Total Points: ${player.totalPoints ?? 0}',
                        style: textTheme.bodySmall),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _PlayerStats extends StatelessWidget {
  final Player player;

  const _PlayerStats({required this.player});
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleMedium;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Form: ${player.form ?? '0.0'}', style: style),
          const SizedBox(height: 8),
          Text('Selected by: ${player.selectedByPercent ?? '0'}%',
              style: style),
          const SizedBox(height: 8),
          Text('Minutes Played: ${player.minutes ?? 0}', style: style),
          const SizedBox(height: 8),
          Text('Goals Scored: ${player.goalsScored ?? 0}', style: style),
          const SizedBox(height: 8),
          Text('Assists: ${player.assists ?? 0}', style: style),
          const SizedBox(height: 8),
          Text('Clean Sheets: ${player.cleanSheets ?? 0}', style: style),
          if (player.news != null && player.news!.isNotEmpty) ...[
            const SizedBox(height: 15),
            Text(
              'News: ${player.news}',
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ]
        ],
      ),
    );
  }
}
