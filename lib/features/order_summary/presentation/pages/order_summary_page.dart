import 'package:flutter/material.dart';
import 'package:quarbani_user_app/core/constants/theme/app_colors.dart';
import '../../../../app/routes/routes_names.dart';
import '../../../../core/Models/order_model.dart';
import '../../../../core/constants/theme/app_text_styles.dart';
import '../widgets/summary_item.dart';


class OrderSummaryPage extends StatelessWidget {


  final OrderSummaryModel order;


  const OrderSummaryPage({

    super.key,

    required this.order,

  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.white,
      // body:SafeArea(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(
      //       horizontal: 16,
      //     ),
      //     child: SingleChildScrollView(
      //       child: Column(
      //         children: [
      //           const SizedBox(height: 15),
      //           // HEADER
      //           Text(
      //
      //             "Order Summary",
      //             style: AppTextStyles.heading,
      //
      //           ),
      //
      //           const SizedBox(height: 3),
      //            Text(
      //             "Review your Qurbani details",
      //             style: AppTextStyles.body,
      //
      //           ),
      //
      //
      //
      //           const SizedBox(height: 18),
      //
      //
      //           // DETAILS CARD
      //
      //
      //           Container(
      //             padding: const EdgeInsets.fromLTRB(18, 18, 18, 5,
      //             ),
      //             decoration: BoxDecoration(
      //               color: AppColors.white,
      //               borderRadius:
      //               BorderRadius.circular(18),
      //
      //               border: Border.all(
      //
      //                 color: AppColors.greyBorder,
      //
      //               ),
      //             ),
      //
      //
      //
      //             child: Column(
      //
      //               children: [
      //                 summaryItem(
      //                   Icons.pets,
      //                   "Animal",
      //                   order.animal,
      //                 ),
      //
      //                 summaryItem(
      //                   Icons.calendar_month,
      //                   "Date",
      //                   order.date,
      //                 ),
      //
      //                 summaryItem(
      //                   Icons.access_time,
      //                   "Time Slot",
      //                   order.timeSlot,
      //                 ),
      //
      //                 summaryItem(
      //                   Icons.person,
      //                   "Vendor",
      //                   order.vendor,
      //                 ),
      //
      //                 summaryItem(
      //                   Icons.shopping_cart,
      //                   "Quantity",
      //                   order.quantity,
      //                 ),
      //
      //                 summaryItem(
      //                   Icons.currency_rupee,
      //                   "Amount",
      //                   "",
      //                 ),
      //
      //               ],
      //
      //             ),
      //
      //           ),
      //
      //
      //           const SizedBox(height: 18),
      //
      //           // TOTAL PAYABLE
      //
      //           Container(
      //
      //             padding:
      //             const EdgeInsets.symmetric(
      //               horizontal: 15,
      //               vertical: 14,
      //             ),
      //
      //             decoration: BoxDecoration(
      //
      //               borderRadius:
      //               BorderRadius.circular(12),
      //
      //
      //               border: Border.all(
      //
      //                 color: AppColors.greyBorder,
      //
      //               ),
      //
      //             ),
      //
      //
      //             child: Row(
      //
      //               mainAxisAlignment:
      //               MainAxisAlignment.spaceBetween,
      //
      //               children: [
      //                 const Text("Total Payable",
      //                   style: AppTextStyles.smallTitle,
      //
      //                 ),
      //
      //
      //                 Text(
      //
      //                   "SAR ${order.amount}",
      //                   style: AppTextStyles.amount,
      //
      //                 ),
      //
      //               ],
      //
      //             ),
      //
      //           ),
      //
      //           const SizedBox(height:40),
      //
      //           SizedBox(
      //             width: double.infinity,
      //             height: 45,
      //             child: ElevatedButton(
      //               style: ElevatedButton.styleFrom(
      //                 backgroundColor: AppColors.green,
      //                 textStyle: AppTextStyles.title,
      //
      //                 shape:
      //                 RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(10),
      //
      //                 ),
      //               ),
      //               onPressed: () {
      //
      //                 Navigator.pushNamed(
      //                   context,
      //                   RouteNames.paymentMethod,
      //                 );
      //
      //               },
      //
      //
      //               child: Text(
      //
      //                 "Proceed to Payment",
      //                 style: AppTextStyles.button,
      //
      //                 ),
      //               ),
      //
      //             ),
      //
      //
      //           const SizedBox(height: 15),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),

          child: Column(

            children: [

              Expanded(

                child: SingleChildScrollView(

                  child: Column(

                    children: [

                      const SizedBox(height: 10),


                      // BACK BUTTON

                      Align(

                        alignment: Alignment.centerLeft,

                        child: IconButton(

                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),

                          onPressed: (){

                            Navigator.pop(context);

                          },

                        ),

                      ),



                      Text(
                        "Order Summary",
                        style: AppTextStyles.heading,
                      ),

                      const SizedBox(height: 3),

                      Text(
                        "Review your Qurbani details",
                        style: AppTextStyles.body,
                      ),

                      const SizedBox(height: 18),


                      // YOUR DETAILS CARD
                      Container(
                        padding: const EdgeInsets.fromLTRB(
                          18,18,18,5,
                        ),

                        decoration: BoxDecoration(

                          borderRadius:
                          BorderRadius.circular(18),

                          border: Border.all(
                            color: AppColors.greyBorder,
                          ),

                        ),

                        child: Column(

                          children: [

                            summaryItem(
                              Icons.pets,
                              "Animal",
                              order.animal,
                            ),

                            summaryItem(
                              Icons.calendar_month,
                              "Date",
                              order.date,
                            ),

                            summaryItem(
                              Icons.access_time,
                              "Time Slot",
                              order.timeSlot,
                            ),

                            summaryItem(
                              Icons.person,
                              "Vendor",
                              order.vendor,
                            ),

                            summaryItem(
                              Icons.shopping_cart,
                              "Quantity",
                              order.quantity,
                            ),

                            summaryItem(
                              Icons.currency_rupee,
                              "Amount",
                              "",
                            ),

                          ],
                        ),

                      ),


                      const SizedBox(height:18),


                      Container(

                        padding:
                        const EdgeInsets.symmetric(
                          horizontal:15,
                          vertical:14,
                        ),

                        decoration: BoxDecoration(

                          borderRadius:
                          BorderRadius.circular(12),

                          border: Border.all(
                            color: AppColors.greyBorder,
                          ),

                        ),

                        child: Row(

                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,

                          children: [

                            const Text(
                              "Total Payable",
                              style: AppTextStyles.smallTitle,
                            ),

                            Text(
                              "SAR ${order.amount}",
                              style: AppTextStyles.amount,
                            ),

                          ],

                        ),

                      ),


                    ],
                  ),

                ),

              ),



              const SizedBox(height:15),


              // FIXED BUTTON

              SizedBox(

                width: double.infinity,

                height:45,

                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(

                    backgroundColor:
                    AppColors.green,

                    shape:
                    RoundedRectangleBorder(

                      borderRadius:
                      BorderRadius.circular(10),

                    ),

                  ),


                  onPressed: (){

                    Navigator.pushNamed(
                      context,
                      RouteNames.paymentMethod,
                    );

                  },


                  child: Text(

                    "Proceed to Payment",

                    style:
                    AppTextStyles.button,

                  ),

                ),

              ),


              const SizedBox(height:15),

            ],

          ),

        ),

      ),
            
            


    );

  }

}