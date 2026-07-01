import 'package:flutter/material.dart';

import '../../../../core/Models/payment_success_model.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';


class PaymentSuccessPage extends StatelessWidget {

  final PaymentSuccessModel payment;

  const PaymentSuccessPage({
    super.key,
    required this.payment,
  });


  @override
  Widget build(BuildContext context) {

    final paymentData=payment;

    return Scaffold(

      backgroundColor: AppColors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal:20,
          ),

          child: Column(

            children: [
              const SizedBox(height:50),

              Container(

                height:85,

                width:85,

                decoration: const BoxDecoration(

                  shape: BoxShape.circle,

                  color: AppColors.successGreen,

                ),

                child: const Icon(
                  Icons.check,
                  color: AppColors.white,
                  size:55,
                ),
              ),

              const SizedBox(height:25),

               Text(
                "Payment Successful!",
                  style: AppTextStyles.heading,
              ),

              const SizedBox(height:15),

              const Text(

                "Your Quarbani order has been\nplaced successfully.",

                textAlign: TextAlign.center,
                style: AppTextStyles.body,

              ),
              const SizedBox(height:30),

              Container(

                padding: const EdgeInsets.all(15),

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(12),

                  border: Border.all(

                    color: AppColors.greyBorder,

                  ),

                ),


                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [

                        const Text(
                          "Order ID",
                          style: AppTextStyles.smallTitle,
                        ),


                        Text(

                          // "QB-2024-0001258",
                          payment.orderId,
                          style: AppTextStyles.amount,
                        ),


                      ],

                    ),


                    const SizedBox(height:20),


                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                      children: [
                        const Text(
                          "Amount Paid",
                          style: AppTextStyles.smallTitle,
                        ),

                        Text(

                          // "SAR 650",
                          "SAR ${paymentData.amount}",
                          style: AppTextStyles.amount,

                        ),

                      ],

                    ),

                  ],

                ),

              ),

              const SizedBox(height:30),

              Text(
                "A confirmation has been sent to\nyour email and WhatsApp.",
                textAlign: TextAlign.center,
                style: AppTextStyles.successMessage,
              ),

              // const Spacer(),
              const SizedBox(height: 70,),


              SizedBox(

                width:double.infinity,

                height:50,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(10),
                    ),

                  ),

                  onPressed:(){},
                  child: const Text(
                    "View My Order",
                    style: AppTextStyles.button,

                  ),
                ),
              ),

              const SizedBox(height:20),

              TextButton(

                onPressed:(){},
                child: Text(
                  "Back to Home",
                  style: AppTextStyles.link,
                ),

              ),


              const SizedBox(height:20),


            ],

          ),

        ),

      ),

    );

  }

}