import 'package:flutter/material.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';

Widget paymentOption(
    String title,
    String imagePath,
    ) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 15,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: AppColors.greyBorder,
      ),
    ),
    child: Row(
      children: [
        Image.asset(
          imagePath,
          width: 40,
          height: 40,
          fit: BoxFit.contain,
        ),

        const SizedBox(width: 15),

        Text(
          title,
          style: AppTextStyles.smallTitle.copyWith(
            fontSize: 15, // keep exact original UI size
          ),
        ),

        const Spacer(),

        const Icon(
          Icons.arrow_forward_ios,
          size: 15,
          color: AppColors.black,
        ),
      ],
    ),
  );
}