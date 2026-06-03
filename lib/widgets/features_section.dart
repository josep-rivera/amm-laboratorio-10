import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class _FeatureData {
  final String title;
  final String body;
  final IconData icon;
  final Color iconColor;

  const _FeatureData({
    required this.title,
    required this.body,
    required this.icon,
    required this.iconColor,
  });
}

const _features = [
  _FeatureData(
    title: 'Disfruta en tu TV',
    body:
        'Ve en smart TV, PlayStation, Xbox, Chromecast, Apple TV, reproductores de Blu-ray y más.',
    icon: Icons.tv,
    iconColor: Colors.orange,
  ),
  _FeatureData(
    title: 'Descarga tus series para verlas offline',
    body:
        'Guarda tu contenido favorito y siempre tendrás algo para ver.',
    icon: Icons.download,
    iconColor: Colors.pink,
  ),
  _FeatureData(
    title: 'Disfruta donde quieras',
    body:
        'Películas y series ilimitadas en tu teléfono, tablet, laptop y TV.',
    icon: Icons.phone_iphone,
    iconColor: Colors.blue,
  ),
  _FeatureData(
    title: 'Crea perfiles para niños',
    body:
        'Los niños vivirán aventuras con sus personajes favoritos en un espacio diseñado exclusivamente para ellos, gratis con tu membresía.',
    icon: Icons.child_friendly,
    iconColor: Colors.red,
  ),
];

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Más motivos para unirte',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ..._features.map((feature) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.featureCardBg,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              feature.title,
                              style: const TextStyle(
                                color: AppColors.textPrimary,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              feature.body,
                              style: const TextStyle(
                                color: AppColors.textSecondary,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Icon(
                        feature.icon,
                        size: 48,
                        color: feature.iconColor,
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
