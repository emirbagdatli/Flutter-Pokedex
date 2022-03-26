import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonInfo extends StatelessWidget {
  PokemonModel getpokemon;
  PokemonInfo({Key? key, required this.getpokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.w)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _buildInformationRow('Name', getpokemon.name),
          _buildInformationRow('Height', getpokemon.height),
          _buildInformationRow('Weight', getpokemon.weight),
          _buildInformationRow('Spawn Time', getpokemon.spawnTime),
          _buildInformationRow('Weakness', getpokemon.weaknesses),
          _buildInformationRow('Pre Evolution', getpokemon.prevEvolution),
          _buildInformationRow('Next Evolution', getpokemon.nextEvolution),
        ]),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Constants.getPokemonInfoTextStyle(),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(' , '),
            style: Constants.getPokemonInfoLabelTextStyle(),
          )
        else if (value == null)
          Text(
            'N/A',
            style: Constants.getPokemonInfoLabelTextStyle(),
          )
        else
          Text(
            value,
            style: Constants.getPokemonInfoLabelTextStyle(),
          )
      ],
    );
  }
}
