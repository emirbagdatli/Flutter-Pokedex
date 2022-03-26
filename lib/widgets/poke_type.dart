import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeTypeWidget extends StatelessWidget {
  final PokemonModel getpokemon;
  const PokeTypeWidget({Key? key, required this.getpokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  getpokemon.name ?? '',
                  style: Constants.getDetailTextStyle(),
                ),
              ),
              Text(
                '#${getpokemon.num}',
                style: Constants.getDetailTextStyle(),
              )
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
            label: Text(
              getpokemon.type?.join(' , ') ?? '',
              style: Constants.getPokemonInfoTextStyle(),
            ),
          )
        ],
      ),
    );
  }
}
