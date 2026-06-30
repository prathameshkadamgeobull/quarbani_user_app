import 'package:flutter/material.dart';

import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';

class DetailInfoCard extends StatelessWidget {

  final IconData icon;
  final String title;
  final String value;

  const DetailInfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      children: [

        Icon(
          icon,
          color: AppColors.successGreen,
          size: 24,
        ),

        const SizedBox(height: 6),

        Text(
          title,
          style: AppTextStyles.label.copyWith(
            color: AppColors.black,
          ),
        ),

        Text(
          value,
          style: AppTextStyles.body.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),

      ],
    );
  }
}