import 'package:flutter/material.dart';

class AllWorshipContainer extends StatelessWidget {
  const AllWorshipContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.5),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const SizedBox(
        height: 40,
        width: 305,
        child: Text(
          'جميع العبادات',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
