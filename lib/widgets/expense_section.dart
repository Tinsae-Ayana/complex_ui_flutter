import 'package:complex_ui/utils/constants.dart';
import 'package:complex_ui/utils/strings.dart';
import 'package:complex_ui/widgets/piechart.dart';
import 'package:flutter/material.dart';

class ExpenessSection extends StatelessWidget {
  const ExpenessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: const Text(
            'Expenses',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: category
                      .map((e) => Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor:
                                    AppColors.pieColors[category.indexOf(e)],
                              ),
                              const SizedBox(width: 4),
                              Text(
                                e['name'],
                                style: const TextStyle(fontSize: 18),
                              )
                            ],
                          ))
                      .toList(),
                ),
              ),
              const Expanded(child: PieChart()),
            ],
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
