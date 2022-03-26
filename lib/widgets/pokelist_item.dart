import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constants.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_pokedex/pages/detail_page.dart';
import 'package:flutter_pokedex/widgets/pokemon_image.dart';
import 'package:flutter_pokedex/widgets/pokemon_list_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel getpokemon;
  PokeListItem({Key? key, required this.getpokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(getpokemon: getpokemon)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.black,
        color: const Color.fromRGBO(255, 203, 5, 1),
        child: Column(children: [
          Text(
            getpokemon.name ?? 'NULL',
            style: Constants.getTextStyle(),
            textAlign: TextAlign.center,
          ),
          Chip(
            backgroundColor: UIHelper.getColorFromType(getpokemon.type![0]),
            label: Text(getpokemon.type![0].toString()),
            labelStyle: Constants.getLabelStyle(),
          ),
          Expanded(child: Center(child: PokemonImage(getpokemon: getpokemon))),
        ]),
      ),
    );
  }
}
