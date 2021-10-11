// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fooder_lich/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              image: AssetImage('assets/images/mag5.png'),
              fit: BoxFit.cover,
            )),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/abdul.jpg'),
              ),
              title: Text(
                'Abdul Sattar',
                style: FooderlichTheme.lightTextTheme.headline2,
              ),
              subtitle: Text(
                'Smoothie Connoisseur',
                style: FooderlichTheme.lightTextTheme.headline3,
              ),
              trailing: IconButton(
                  onPressed: () {
                    const snackBar =
                        SnackBar(content: Text('Favorite Presses'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  icon: Icon(
                    Icons.favorite_outline_rounded,
                    size: 30,
                    color: Colors.grey[400],
                  )),
            ),
            Expanded(
              child: Stack(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Positioned(
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                    bottom: 16,
                    right: 16,
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text('Smoothies',
                          style: FooderlichTheme.lightTextTheme.headline1),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
