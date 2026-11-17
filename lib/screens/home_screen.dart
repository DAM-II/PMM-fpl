import 'package:flutter/material.dart';
import 'package:movies_app/providers/fpl_provider.dart';
import 'package:movies_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fplProvider = Provider.of<FplProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fantasy Premier League'),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Targetes principals
              CardSwiper(teams: fplProvider.teams),
              MovieSlider(
                players: fplProvider.forwards,
                title: 'Forwards',
              ),
              // Poodeu fer la prova d'afegir-ne uns quants, veureu com cada llista és independent
              MovieSlider(
                players: fplProvider.midfielders,
                title: 'Midfielders',
              ),
              MovieSlider(
                players: fplProvider.defenders,
                title: 'Defenders',
              ),
              MovieSlider(
                players: fplProvider.goalkeepers,
                title: 'Goalkeepers',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
