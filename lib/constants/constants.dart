import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();
  static const String title = 'Pokedex';
  static TextStyle getTextStyle() {
    return const TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontFamily: 'PokeFont',
      shadows: <Shadow>[
        Shadow(
          offset: Offset(1.0, 2.0),
          blurRadius: 8.0,
          color: Colors.grey,
        ),
      ],
    );
  }

  static TextStyle getLabelStyle() {
    return const TextStyle(
      fontSize: 12,
      color: Colors.white,
      fontFamily: 'PokeFont',
      shadows: <Shadow>[
        Shadow(
          offset: Offset(1.0, 2.0),
          blurRadius: 8.0,
          color: Colors.black,
        ),
      ],
    );
  }

  static TextStyle getDetailTextStyle() {
    return const TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontFamily: 'PokeFont',
      shadows: <Shadow>[
        Shadow(offset: Offset(1.0, 2.0), blurRadius: 40.0, color: Colors.black),
      ],
    );
  }

  static TextStyle getPokemonInfoTextStyle() {
    return const TextStyle(
      fontSize: 12,
      color: Colors.black,
      fontFamily: 'PokeFont',
      shadows: <Shadow>[
        Shadow(
          offset: Offset(1.0, 2.0),
          blurRadius: 20.0,
          color: Colors.grey,
        ),
      ],
    );
  }

  static TextStyle getPokemonInfoLabelTextStyle() {
    return const TextStyle(
      fontSize: 12,
      color: Colors.black,
      fontFamily: 'PokeFont',
      shadows: <Shadow>[
        Shadow(
          offset: Offset(1.0, 2.0),
          blurRadius: 20.0,
          color: Colors.grey,
        ),
      ],
    );
  }
}
