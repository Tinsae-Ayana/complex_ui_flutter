import 'package:complex_ui/utils/constants.dart';
import 'package:complex_ui/utils/size.dart';
import 'package:complex_ui/widgets/card_details.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text(
              'Selected Card',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: SizeConfig.getWidth(context),
                  decoration: BoxDecoration(
                      color: AppColors.primaryWhite,
                      boxShadow: AppColors.customShadow,
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        top: 150,
                        bottom: -200,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: AppColors.customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white38),
                        ),
                      ),
                      Positioned.fill(
                        left: -300,
                        top: -100,
                        bottom: -100,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: AppColors.customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white38),
                        ),
                      ),
                      const CardDetails()
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
