import 'package:flutter/material.dart';

class WeatherForecastView extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temperature;
  const WeatherForecastView({
    super.key,
    required this.time,
    required this.icon,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Card(
              child: Column(
                children: [
                  Text(
                    time,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    icon,
                    size: 32,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    temperature,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
