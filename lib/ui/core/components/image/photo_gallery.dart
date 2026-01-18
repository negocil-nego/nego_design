import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class PhotoGallery extends StatelessWidget {
  final List<CardImageModel> cards;
  final AvatarTileModel? avatar;
  final double height;

  const PhotoGallery({
    super.key,
    this.avatar,
    this.cards = const [],
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    if (cards.isEmpty && avatar != null) {
      return AvatarTile(avatar: avatar!);
    }

    if (cards.isNotEmpty && avatar == null) {
      return _PhotoGalleryList(cards: cards, height: height);
    }

    if (cards.isNotEmpty && avatar != null) {
      return Column(
        children: [
          AvatarTile(avatar: avatar!),
          _PhotoGalleryList(cards: cards, height: height),
        ],
      );
    }

    return SizedBox.shrink();
  }
}

class _PhotoGalleryList extends StatelessWidget {
  final List<CardImageModel> cards;
  final double height;

  const _PhotoGalleryList({required this.cards, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemBuilder: (context, index) => CardImage(model: cards[index]),
      ),
    );
  }
}
