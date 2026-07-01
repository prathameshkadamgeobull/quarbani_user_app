import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/routes/routes_names.dart';
import '../../../../core/Models/animal_assigned_model.dart';
import '../../../../core/Models/payment_success_model.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';

import '../../bloc/order_tracking_bloc.dart';
import '../../bloc/order_tracking_event.dart';
import '../../bloc/order_tracking_state.dart';



class OrderTrackingPage extends StatefulWidget {

  const OrderTrackingPage({super.key});

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();

}
class _OrderTrackingPageState extends State<OrderTrackingPage>
    with SingleTickerProviderStateMixin {


  late AnimationController controller;
  @override
  void initState() {
    super.initState();


    controller = AnimationController(

      vsync: this,

      duration: const Duration(seconds: 2),

    );


    controller.forward();

  }



  @override
  void dispose(){

    controller.dispose();

    super.dispose();

  }


  @override
  Widget build(BuildContext context) {


    final paymentData =
    ModalRoute.of(context)?.settings.arguments
    as PaymentSuccessModel?;


    if(paymentData == null){

      return const Scaffold(

        body: Center(

          child: Text(
            "No Order Data Found",
          ),

        ),

      );

    }



    return BlocProvider(


      create: (_) => OrderTrackingBloc()
        ..add(
          LoadOrderTracking(
            orderId: paymentData.orderId,
          ),
        ),



      child: Scaffold(


        backgroundColor: AppColors.white,



        appBar: AppBar(


          backgroundColor: AppColors.white,

          elevation: 0,

          leading: IconButton(

            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),

            onPressed: (){

              Navigator.pop(context);

            },

          ),



          centerTitle:true,


          title: const Text(

            "My Order",

            style: AppTextStyles.title,

          ),

        ),





        body: Padding(


          padding: const EdgeInsets.symmetric(
              horizontal:20,
              vertical:10
          ),



          child: Column(


            crossAxisAlignment:
            CrossAxisAlignment.start,



            children: [



              Text(

                "Order ID: ${paymentData.orderId}",

                style: AppTextStyles.label,

              ),



              const SizedBox(height:20),





              Expanded(



                child: BlocBuilder<OrderTrackingBloc,OrderTrackingState>(


                  builder:(context,state){



                    return ListView.builder(



                      physics:
                      const BouncingScrollPhysics(),



                      itemCount:state.steps.length,



                      itemBuilder:(context,index){



                        final item =
                        state.steps[index];




                        return SizedBox(


                          height:75,



                          child: Row(



                            crossAxisAlignment:
                            CrossAxisAlignment.start,



                            children:[




                              Column(


                                children:[



                                  Container(


                                    height:20,

                                    width:20,



                                    decoration:BoxDecoration(



                                      shape:
                                      BoxShape.circle,



                                      color:item.completed

                                          ? AppColors.successGreen

                                          : AppColors.white,



                                      border:Border.all(


                                        color:item.completed

                                            ? AppColors.successGreen

                                            : AppColors.greyLight,


                                        width:2,

                                      ),

                                    ),




                                    child:item.completed

                                        ? const Icon(

                                      Icons.check,

                                      size:14,

                                      color:Colors.white,

                                    )

                                        :null,


                                  ),





                                  if(index != state.steps.length-1)


                                    AnimatedBuilder(

                                      animation: controller,


                                      builder:(context,child){


                                        return Container(


                                          height:55 * controller.value,


                                          width:2,


                                          color:AppColors.successGreen,


                                        );


                                      },

                                    ),



                                ],


                              ),





                              const SizedBox(width:20),





                              Expanded(



                                child:Column(


                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,



                                  children:[



                                    Text(


                                      item.title,


                                      style:
                                      AppTextStyles.label,


                                    ),




                                    const SizedBox(height:8),




                                    Text(


                                      item.date,


                                      style:
                                      AppTextStyles.trackingDate,


                                    ),





                                  ],



                                ),


                              ),



                            ],


                          ),


                        );



                      },

                    );



                  },


                ),


              ),


              SizedBox(
            width:double.infinity,
                height:45,
                child:ElevatedButton(

                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor:
                    AppColors.green,
                    shape:
                    RoundedRectangleBorder(

                      borderRadius:
                      BorderRadius.circular(12),

                    ),

                  ),

                  onPressed:(){
                    Navigator.pushNamed(

                      context,

                      RouteNames.animalAssigned,

                      arguments:
                      AnimalAssignedModel(


                        animalId:"GA-78945",


                        image:"assets/images/goat.jpg",


                        type:"Goat",


                        age:"1-2 Years",


                        weight:"25-28 Kg",


                        message: "Your animal is healthy and\nready for Qurbani.",


                        barcode:
                        "9876 5432 1098 7654",


                        orderId:
                        paymentData.orderId,

                      ),


                    );


                  },
                  child:const Text(
                    "View Animal Assigned",
                    style:AppTextStyles.button,
                  ),
                ),
              )

            ],


          ),


        ),


      ),


    );

  }

}