import 'dart:math';
import 'package:complex_ui/utils/constants.dart';
import 'package:complex_ui/utils/strings.dart';
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  const PieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: LayoutBuilder(builder: (context, constraint) {
        return Container(
          height: constraint.maxHeight,
          width: constraint.maxWidth,
          decoration: BoxDecoration(
              color: AppColors.primaryWhite,
              boxShadow: AppColors.customShadow,
              shape: BoxShape.circle),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomPaint(
                  foregroundPainter: PieChartPainter(),
                  painter: PieChartPainter(),
                  child: const Center(
                    child: Text(
                      '\$1234',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: AppColors.primaryWhite,
                      boxShadow: AppColors.customShadow,
                      shape: BoxShape.circle),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 40;
    double total = 0;
    for (var e in category) {
      total += e['amount'];
    }

    var startRadian = -pi / 2;
    for (int i = 0; i < category.length; i++) {
      var currentExpense = category[i];
      var sweepRadian = (currentExpense['amount'] / total) * 2 * pi;

      paint.color = AppColors.pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
