import 'package:complex_ui/utils/constants.dart';
import 'package:complex_ui/widgets/card_section.dart';
import 'package:complex_ui/widgets/expense_section.dart';
import 'package:complex_ui/widgets/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Column(
        children: const [
          SizedBox(height: 40),
          WalletHeader(),
          Expanded(child: CardSection()),
          Expanded(child: ExpenessSection())
        ],
      ),
    );
  }
}
