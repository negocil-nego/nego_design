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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorScreen,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const PhotographySearch(),
            const SizedBox(height: 40),
            PhotographyBadge(children: [
              const AvatarDescription()
            ],),
          ],
        ),
      ),
    );
  }
}
