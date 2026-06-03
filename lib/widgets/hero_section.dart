import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'email_cta_row.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background grid of network images
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2 / 3,
            ),
            itemCount: 12,
            itemBuilder: (context, index) {
              final seed = index + 1;
              return Image.network(
                'https://picsum.photos/seed/$seed/200/300',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    Container(color: AppColors.cardDark),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    color: AppColors.cardDark,
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.netflixRed,
                      ),
                    ),
                  );
                },
              );
            },
          ),
          // Dark gradient overlay
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0x99000000), // ~60% black
                  Color(0x00000000), // transparent
                  Color(0xCC000000), // ~80% black
                ],
                stops: [0.0, 0.4, 1.0],
              ),
            ),
          ),
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  // Top bar
                  Row(
                    children: [
                      const Text(
                        'NETFLIX',
                        style: TextStyle(
                          color: AppColors.netflixRed,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.textPrimary),
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
                      const SizedBox(width: 8),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppColors.textPrimary,
                          side: const BorderSide(color: AppColors.textPrimary),
                        ),
                        onPressed: () {},
                        child: const Text('Iniciar sesión'),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Headline
                  const Text(
                    'Películas y series ilimitadas\ny más',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Subtitle
                  const Text(
                    'A partir de S/ 28.90. Cancela cuando quieras.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const EmailCtaRow(),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
