import 'package:flutter/material.dart';
import 'package:quarbani_user_app/core/constants/theme/app_text_styles.dart';
import '../../../../app/routes/routes_names.dart';
import '../../../../core/Models/payment_model.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../widgets/payment_option_tile.dart';


class PaymentMethodPage extends StatefulWidget {

  const PaymentMethodPage({super.key});


  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();

   }
class _PaymentMethodPageState extends State<PaymentMethodPage> {
  bool isChecked = false;


  final List<PaymentMethodModel> paymentMethods = [

    PaymentMethodModel(
      name: "Apple Pay",
      image: "assets/images/apple.jpg",
    ),

    PaymentMethodModel(
      name: "mada",
      image: "assets/images/mada.jpg",
    ),

    PaymentMethodModel(
      name: "STC Pay",
      image: "assets/images/stc.jpg",
    ),

    PaymentMethodModel(
      name: "PayPal",
      image: "assets/images/Paypal.jpg",
    ),

    PaymentMethodModel(
      name: "Bank Transfer",
      image: "assets/images/banktransfer.jpg",
    ),

  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColors.white,

      body: SafeArea(
        child: Padding(

          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),

          child:SingleChildScrollView(
            child: Column(

              children: [
                const SizedBox(height: 15),

                // HEADER
                SizedBox(
                  height:50,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(
                        "Payment Method",
                       style: AppTextStyles.title,
                      ),


                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.black,
                          ),

                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height:25),

                // TOTAL AMOUNT

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal:15,
                    vertical:16,
                  ),

                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(12),
                    border: Border.all(
                      color:AppColors.greyBorder,

                    ),

                  ),

                  child: Row(

                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [

                      const Text(

                        "Total Amount",
                        style: AppTextStyles.smallTitle,
                      ),
                      Text(
                        "SAR 650",
                        style: AppTextStyles.amount,
                      ),
                    ],

                  ),

                ),

                const SizedBox(height:15),

                // CARD

                Container(
                  padding:const EdgeInsets.all(14),
                  decoration:BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(12),
                    border:Border.all(
                      color: AppColors.greyBorder,

                    ),

                  ),

                  child:Column(

                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                       Text(
                        "Recommended",
                         style: AppTextStyles.label,
                      ),

                      const SizedBox(height:8),

                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [

                           Text(
                            "Credit / Debit Card",
                             style: AppTextStyles.amount,

                          ),

                          Row(

                            children: [
                              Image.asset(
                                "assets/images/visa.jpg",
                                width:38,
                                height:22,
                                fit: BoxFit.contain,
                              ),

                              const SizedBox(width:5),
                              Image.asset(
                                "assets/images/mastercard.jpg",
                                width:38,
                                height:22,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(width:5),
                              Image.asset(
                                "assets/images/mada.jpg",
                                width:30,
                                height:22,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ],
                      ),
                          ],
                  ),
                ),


                ...paymentMethods.map((payment) =>paymentOption(
                      payment.name,
                      payment.image,

                    )),
                const SizedBox(height: 40,),

                Row(
                  children:[
                    Checkbox(

                      value: isChecked,

                      activeColor: AppColors.successGreen,

                      onChanged: (value){

                        setState(() {

                          isChecked = value!;

                        });

                      },

                    ),



                    RichText(

                      text:  TextSpan(

                        style: AppTextStyles.body.copyWith(
                          // fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),

                        children: [

                          TextSpan(
                            text: "I agree to the ",
                          ),

                          TextSpan(
                            text: "Terms & Conditions",
                            style:
                              AppTextStyles.link,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height:10),

                SizedBox(

                  width:double.infinity,

                  height:50,

                  child:ElevatedButton(
                    style:ElevatedButton.styleFrom(
                        backgroundColor: AppColors.green,

                      shape:
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10),

                      ),
                    ),
                    onPressed:(){

                      Navigator.pushNamed(

                        context,

                        RouteNames.paymentSuccess,

                      );
                    },
                    child: Text(
                      "Pay SAR 650",
                      style: AppTextStyles.button,
                    ),

                  ),
                ),

                const SizedBox(height:15),

              ],

            ),
          ),

        ),

      ),

    );

  }

}