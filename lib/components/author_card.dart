import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'circle_image.dart';
import 'favorite.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider imageProvider;
  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
  }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  @override
  Widget build(BuildContext context) {
    Favorite? favorite = Favorite.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            CircleImage(imageProvider: widget.imageProvider, imageRadius: 28),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.authorName,
                  style: FooderlichTheme.lightTextTheme.headline2,
                ),
                Text(
                  widget.title,
                  style: FooderlichTheme.lightTextTheme.headline3,
                )
              ],
            ),
          ]),
          IconButton(
            icon: Icon(favorite!.isFavorite.isFavorite
                ? Icons.favorite
                : Icons.favorite_border),
            iconSize: 30,
            color: Colors.red[400],
            onPressed: () {
              setState(() {
                favorite.isFavorite.changeBackgroundColor();
              });
            },
          ),
        ],
      ),
    );
  }
}
