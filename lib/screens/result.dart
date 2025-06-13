import 'package:flutter/material.dart';
import '../constants.dart';

class ResultScreen extends StatelessWidget {
  final String name;
  final double height;
  final double weight;

  const ResultScreen({
    super.key,
    required this.name,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    final bmi = weight / ((height / 100) * (height / 100));
    final category = _getBmiCategory(bmi);
    final Color categoryColor = category['color'] as Color;
    final String categoryName = category['name']!;
    final String categoryImage = category['image']!;
    final String categoryDescription = category['description']!;

    return Scaffold(
      appBar: AppBar(title: Text("$name's BMI Result")),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Your BMI is',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Text(
                  bmi.toStringAsFixed(1),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 60, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Card(
                  color: const Color(0xFF1D1E33),
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          categoryName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: categoryColor,
                          ),
                        ),
                        const SizedBox(height: 15),
                        if (categoryImage.isNotEmpty && categoryImage.startsWith('assets/'))
                          Image.asset(
                            categoryImage,
                            height: 150, // Adjusted height for better layout
                            fit: BoxFit.contain,
                          )
                        else
                          Container(
                            height: 150,
                            child: const Center(child: Text('Image not available', style: TextStyle(color: Colors.white54))),
                          ),
                        const SizedBox(height: 15),
                        Text(
                          categoryDescription,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: const Text('Start Over'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> _getBmiCategory(double bmi) {
    if (bmi < 16) return bmiCategories[0];
    if (bmi < 17) return bmiCategories[1];
    if (bmi < 18.5) return bmiCategories[2];
    if (bmi < 25) return bmiCategories[3];
    if (bmi < 30) return bmiCategories[4];
    if (bmi < 35) return bmiCategories[5];
    if (bmi < 40) return bmiCategories[6];
    return bmiCategories[7];
  }
}
