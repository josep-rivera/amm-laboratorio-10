import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'email_cta_row.dart';

class CtaSection extends StatelessWidget {
  const CtaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          const Text(
            '¿Querés ver Netflix ya? Ingresa tu email...',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          const EmailCtaRow(),
        ],
      ),
    );
  }
}
