import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

const _footerLinks = [
  'Preguntas frecuentes',
  'Centro de ayuda',
  'Cuenta',
  'Prensa',
  'Relaciones con inversionistas',
  'Empleo',
  'Canjear tarjetas de regalo',
  'Comprar tarjetas de regalo',
  'Formas de ver',
  'Términos de uso',
  'Privacidad',
  'Preferencias de cookies',
];

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Contact text
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 14,
              ),
              children: [
                TextSpan(text: '¿Preguntas? Llama al '),
                TextSpan(
                  text: '0 800 55821',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Footer links grid
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 4,
            children: _footerLinks
                .map(
                  (link) => TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.textSecondary,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () {},
                    child: Text(
                      link,
                      style: const TextStyle(fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 16),
          // Language chip
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.textSecondary),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              'Español ▼',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Legal text
          const Text(
            'Netflix Peru',
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
