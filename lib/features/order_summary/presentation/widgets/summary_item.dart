// import 'package:flutter/material.dart';
//
//
// Widget summaryItem(
//     IconData icon,
//     String title,
//     String value,
//     ){
//
//   return Padding(
//
//     padding: const EdgeInsets.only(bottom:18),
//
//     child: Row(
//
//       crossAxisAlignment: CrossAxisAlignment.start,
//
//       children: [
//         SizedBox(
//           width:35,
//           child: Icon(
//             icon,
//             size:20,
//             color: Colors.orange,
//           ),
//         ),
//
//
//         const SizedBox(width:15),
//
//
//
//         Expanded(
//           child: Column(
//
//             crossAxisAlignment:
//             CrossAxisAlignment.start,
//
//             children: [
//
//               Text(
//                 title,
//                 style: const TextStyle(
//                   fontSize:22,
//                   fontWeight: FontWeight.w900,
//                   color: Colors.black,
//
//                 ),
//
//               ),
//
//
//
//               const SizedBox(height:4),
//
//               Text(
//                 value,
//                 style: const TextStyle(
//                   fontSize:18,
//                   color: Color(0xff111111),
//                   fontWeight: FontWeight.w700,
//
//                 ),
//
//               ),
//             ],
//
//           ),
//
//         )
//
//       ],
//
//     ),
//
//   );
//
// }


import 'package:flutter/material.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';

Widget summaryItem(
    IconData icon,
    String title,
    String value,
    ) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 18),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 35,
          child: Icon(
            icon,
            size: 20,
            color: AppColors.gold,
          ),
        ),

        const SizedBox(width: 15),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.smallTitle.copyWith(
                  color: AppColors.black,
                ),
              ),

              const SizedBox(height: 4),

              Text(
                value,
                style: AppTextStyles.body.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}