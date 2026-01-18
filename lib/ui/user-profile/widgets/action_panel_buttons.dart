import 'package:flutter/material.dart';

class ActionPanelButtons extends StatelessWidget {
  const ActionPanelButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    return Transform.translate(
      offset: Offset(0, 30),
      child: Container(
        height: 65,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: colorScheme.secondary.withAlpha(100)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: colorScheme.surface,
              offset: Offset(0, 10),
              blurRadius: 20,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                height: MediaQuery.of(context).size.height,
                elevation: 0,
                color: colorScheme.primary,
                child: Text('Seguir', style: TextStyle(color: Colors.white),),
              ),
            ),

            Expanded(
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                height: MediaQuery.of(context).size.height,
                elevation: 0,
                child: Text('Contactar', style: TextStyle(),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
