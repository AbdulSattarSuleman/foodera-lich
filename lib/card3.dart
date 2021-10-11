import 'package:flutter/material.dart';
import 'package:fooder_lich/fooderlich_theme.dart';

class Card3 extends StatefulWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/mag2.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            // Add Dark Overlay
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
            ),
            // Add Container, Column, Icon,
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            // Add Center Widget With Chip widget Children
            Center(
              child: Wrap(
                alignment: WrapAlignment.end,
                spacing: 10,
                children: [
                  Chip(
                    label: Text(
                      'Vegan',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      setState(() {
                        // widget.isDelete = !widget.isDelete;
                      });
                    },
                  ),
                  Chip(
                    label: Text(
                      'Healthy',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      const snackBar = SnackBar(content: Text('Deleted'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                  Chip(
                    label: Text(
                      'Carrots',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      const snackBar = SnackBar(content: Text('Deleted'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                  Chip(
                    label: Text(
                      'Water',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      const snackBar = SnackBar(content: Text('Deleted'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                  Chip(
                    label: Text(
                      'Potato',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      const snackBar = SnackBar(content: Text('Deleted'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
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
