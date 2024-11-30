import  'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final String time;
  final String temp;
  final IconData icon;
  const HourlyForecastItem({super.key, 
  required this.time, 
  required this.temp, 
  required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(135, 8, 208, 239),
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 8,
            ),
            Icon(
              icon,
              size: 32,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              temp,
            ),
          ],
        ),
      ),
    );
  }
}