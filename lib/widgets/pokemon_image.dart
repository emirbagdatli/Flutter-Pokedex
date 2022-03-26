import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';

class PokemonImage extends StatelessWidget {
  late final PokemonModel getpokemon;
  PokemonImage({Key? key, required this.getpokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            'images/pokeball.png',
            width: UIHelper.calculatePokemonImageSize(),
            height: UIHelper.calculatePokemonImageSize(),
            color: Colors.white.withOpacity(0.8),
            fit: BoxFit.fitHeight,
          ),
          Hero(
            tag: getpokemon.id!,
            child: CachedNetworkImage(
              imageUrl: getpokemon.img ?? '',
              placeholder: (context, url) => CircularProgressIndicator(
                color: UIHelper.getColorFromType(getpokemon.type![0]),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              width: UIHelper.calculatePokemonImageSize(),
              height: UIHelper.calculatePokemonImageSize(),
              fit: BoxFit.fitHeight,
              placeholderFadeInDuration: const Duration(seconds: 1),
            ),
          ),
        ],
      ),
    );
  }
}
