import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class EmailCtaRow extends StatelessWidget {
  const EmailCtaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: const TextStyle(color: AppColors.textPrimary),
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: const TextStyle(color: AppColors.textSecondary),
              filled: true,
              fillColor: AppColors.cardDark,
              border: const OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.netflixRed,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          ),
          onPressed: () {},
          child: const Text(
            'Comenzar >',
            style: TextStyle(color: AppColors.textPrimary, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
