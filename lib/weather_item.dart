import 'package:flutter/material.dart';

class HourlyWeatherForecast extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const HourlyWeatherForecast({super.key, required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Icon(
                icon,
                size: 32,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                value,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
       
       
      ],
    );
  }
}
