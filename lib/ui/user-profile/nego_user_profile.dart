import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class NegoUserProfile extends StatelessWidget {
  const NegoUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MenuAppbar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
        actions: [IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AvatarPanel(
              model: AvatarPanelModel(
                image: NegoAppImage.image2,
                title: 'Sedrac Lucas Calupeteca',
                subtitle: 'Mecânico',
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 60, left: 30, right: 30),
              child: TabOptions(
                items: [
                  TabOptionModel(
                    text: "Coleção",
                    selected: true,
                    child: PhotoGallery(
                      cards: [
                        CardImageModel(image: NegoAppImage.image2),
                        CardImageModel(image: NegoAppImage.image1),
                      ],
                    ),
                  ),
                  TabOptionModel(text: "Em trabalho"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
