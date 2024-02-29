import 'package:flutter/material.dart';
import 'package:plant_project/app_colors.dart';

class PlantCardWidget extends StatelessWidget {
  const PlantCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        width: 162,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10.0,
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                child: Image.asset(
                  'assets/thesill.jpg',
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: ColoredBox(
                color: deepGreenAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Plant 1',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      '\$30',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
