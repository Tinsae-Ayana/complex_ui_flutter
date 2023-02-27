import 'package:complex_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Michale's Wallet",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                boxShadow: AppColors.customShadow,
                color: AppColors.primaryWhite,
                shape: BoxShape.circle),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: AppColors.customShadow,
                        color: Colors.deepOrange,
                        shape: BoxShape.circle),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        boxShadow: AppColors.customShadow,
                        color: AppColors.primaryWhite,
                        shape: BoxShape.circle),
                  ),
                ),
                const Center(
                  child: Icon(Icons.notifications),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
