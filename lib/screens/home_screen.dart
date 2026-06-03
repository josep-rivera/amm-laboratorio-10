import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/hero_section.dart';
import '../widgets/trending_section.dart';
import '../widgets/features_section.dart';
import '../widgets/faq_section.dart';
import '../widgets/cta_section.dart';
import '../widgets/footer_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? _expandedFaqIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSection(),
            const TrendingSection(),
            const FeaturesSection(),
            FaqSection(
              expandedIndex: _expandedFaqIndex,
              onToggle: (i) => setState(
                () => _expandedFaqIndex = (_expandedFaqIndex == i) ? null : i,
              ),
            ),
            const CtaSection(),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
