import 'package:flutter/material.dart';

const List<Map<String, dynamic>> bmiCategories = [
  {
    'name': 'SEVERE THINNESS',
    'range': '< 16',
    'color': Colors.blue,
    'image': 'assets/images/severe.png',
    'description': 'You are severely underweight. Please consult a doctor.'
  },
  {
    'name': 'MODERATE THINNESS',
    'range': '16 - 17',
    'color': Colors.lightBlue,
    'image': 'assets/images/moderate.png',
    'description': 'You are moderately underweight. Consider nutritional advice.'
  },
  {
    'name': 'MILD THINNESS',
    'range': '17 - 18.5',
    'color': Colors.blueAccent,
    'image': 'assets/images/mild.png',
    'description': 'You are mildly underweight. Try to eat more nutritious foods.'
  },
  {
    'name': 'NORMAL',
    'range': '18.5 - 25',
    'color': Colors.green,
    'image': 'assets/images/normal.png',
    'description': 'You have a healthy weight. Keep it up!'
  },
  {
    'name': 'OVERWEIGHT',
    'range': '25 - 30',
    'color': Colors.orange,
    'image': 'assets/images/overweight.png',
    'description': 'You are overweight. Consider more exercise.'
  },
  {
    'name': 'OBESE CLASS I',
    'range': '30 - 35',
    'color': Colors.redAccent,
    'image': 'assets/images/obese1.png',
    'description': 'You are obese (Class I). Consider lifestyle changes.'
  },
  {
    'name': 'OBESE CLASS II',
    'range': '35 - 40',
    'color': Colors.red,
    'image': 'assets/images/obese2.png',
    'description': 'You are obese (Class II). Please consult a doctor.'
  },
  {
    'name': 'OBESE CLASS III',
    'range': '> 40',
    'color': Colors.deepOrange,
    'image': 'assets/images/obese3.png',
    'description': 'You are severely obese. Medical advice is recommended.'
  },
];