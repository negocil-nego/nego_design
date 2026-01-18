import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class NegoPhotography extends StatefulWidget {
  const NegoPhotography({super.key});

  @override
  State<NegoPhotography> createState() => _NegoPhotographyState();
}

class _NegoPhotographyState extends State<NegoPhotography> {
  @override
  Widget build(BuildContext context) {
    final colorSchema = ColorScheme.of(context);
    final colorScreen = colorSchema.surface;
    return Scaffold(
      backgroundColor: colorScreen,
      appBar: MenuAppbar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SearchContainer(text: "Best place to\n Find awesome photos"),
            const SizedBox(height: 40),
            TabContainer(
              title: "For you",
              items: [
                TabOptionModel(
                  text: 'Recommend',
                  selected: true,
                  child: Column(
                    spacing: 15,
                    children: [
                    PhotoGallery(
                      avatar: AvatarTileModel(
                          image: NegoAppImage.image1,
                          title: 'Sedrac Lucas Calupeteca',
                          subtitle: 'Luanda, Angola',
                          bottomText: '4 min ago'
                      ),
                      cards: [
                        CardImageModel(image: NegoAppImage.image2),
                        CardImageModel(image: NegoAppImage.image1),
                      ],
                    ),
                    PhotoGallery(
                      avatar: AvatarTileModel(
                          image: NegoAppImage.image2,
                          title: 'Pedro José',
                          subtitle: 'Bie, Angola',
                          bottomText: '19 min ago'
                      ),
                      cards: [
                        CardImageModel(image: NegoAppImage.image1),
                        CardImageModel(image: NegoAppImage.image2),
                      ],
                    )
                  ],),
                ),
                TabOptionModel(text: 'Likes', child: Text('Hello')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
