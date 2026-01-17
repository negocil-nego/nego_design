import 'package:flutter/material.dart';
import 'package:nego_design/_import.dart';

class AvatarDescription extends StatelessWidget {
  const AvatarDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                maxRadius: 30,
                backgroundImage: AssetImage(NegoAppImage.image),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sedrac Lucas Calupeteca',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Luanda, Angola', style: TextStyle(
                          fontSize: 13
                        ),),
                        Text('4 min ago', style: TextStyle(
                            fontSize: 13
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
