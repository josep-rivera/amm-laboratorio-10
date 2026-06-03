import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class _FaqItem {
  final String question;
  final String answer;

  const _FaqItem({required this.question, required this.answer});
}

const _faqItems = [
  _FaqItem(
    question: '¿Qué es Netflix?',
    answer:
        'Netflix es un servicio de streaming que te permite ver series, películas y documentales en cualquier dispositivo conectado a internet, sin publicidad.',
  ),
  _FaqItem(
    question: '¿Cuánto cuesta Netflix?',
    answer:
        'Los planes de Netflix comienzan desde S/ 28.90 al mes. Podés cancelar cuando quieras, sin contratos ni compromisos.',
  ),
  _FaqItem(
    question: '¿Dónde puedo ver Netflix?',
    answer:
        'Podés ver Netflix en tu teléfono, tablet, Smart TV, laptop o dispositivo de streaming.',
  ),
  _FaqItem(
    question: '¿Cómo cancelo?',
    answer:
        'Netflix es flexible. No hay contratos molestos ni compromisos. Podés cancelar tu cuenta fácilmente en línea con dos clics.',
  ),
  _FaqItem(
    question: '¿Qué puedo ver en Netflix?',
    answer:
        'Netflix tiene un extenso catálogo de películas, documentales, series, anime y mucho más. Hay algo para todos.',
  ),
  _FaqItem(
    question: '¿Es bueno Netflix para los niños?',
    answer:
        'Netflix tiene una experiencia pensada exclusivamente para niños, con control parental y un perfil infantil lleno de contenido apropiado para su edad.',
  ),
];

class FaqSection extends StatelessWidget {
  final int? expandedIndex;
  final ValueChanged<int> onToggle;

  const FaqSection({
    super.key,
    required this.expandedIndex,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Preguntas frecuentes',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ...List.generate(_faqItems.length, (i) {
            final item = _faqItems[i];
            final isExpanded = expandedIndex == i;
            return Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: InkWell(
                onTap: () => onToggle(i),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.cardDark,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              item.question,
                              style: const TextStyle(
                                color: AppColors.textPrimary,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            isExpanded ? '×' : '+',
                            style: const TextStyle(
                              color: AppColors.textPrimary,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                      if (isExpanded) ...[
                        const SizedBox(height: 12),
                        Text(
                          item.answer,
                          style: const TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
