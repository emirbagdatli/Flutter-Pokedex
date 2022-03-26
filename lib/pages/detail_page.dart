import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_pokedex/widgets/poke_type.dart';
import 'package:flutter_pokedex/widgets/pokemon_information.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel getpokemon;
  const DetailPage({Key? key, required this.getpokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildPortraitBody(context);
  }

  Scaffold _buildPortraitBody(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(getpokemon.type![0]),
      body: SafeArea(
          bottom: false,
          left: false,
          right: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                color: Colors.white,
                iconSize: 24.h,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios_rounded),
              ),
              PokeTypeWidget(getpokemon: getpokemon),
              SizedBox(height: 20.h),
              Expanded(
                  child: Stack(
                children: [
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      top: 0.07.sh,
                      child: PokemonInfo(getpokemon: getpokemon)),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: getpokemon.id!,
                      child: CachedNetworkImage(
                        imageUrl: getpokemon.img ?? '',
                        height: 0.14.sh,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  )
                ],
              ))
            ],
          )),
    );
  }
}
