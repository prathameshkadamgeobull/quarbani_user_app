// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../../app/routes/routes_names.dart';
// import '../../../../core/Models/animal_assigned_model.dart';
// import '../../../../core/constants/theme/app_colors.dart';
// import '../../../../core/constants/theme/app_text_styles.dart';
//
// import '../../bloc/animal_assigned_bloc.dart';
// import '../../bloc/animal_assigned_event.dart';
// import '../../bloc/animal_assigned_state.dart';
//
//
//
// class AnimalAssignedPage extends StatelessWidget {
//
//   const AnimalAssignedPage({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     final animal =
//     ModalRoute.of(context)!.settings.arguments as AnimalAssignedModel;
//
//
//
//     return BlocProvider(
//
//
//       create: (_) => AnimalAssignedBloc()
//         ..add(
//           LoadAnimalAssigned(),
//         ),
//
//
//
//       child: Scaffold(
//
//
//         backgroundColor: AppColors.white,
//
//
//
//         body: SafeArea(
//
//
//           child: Padding(
//
//             padding: const EdgeInsets.all(16),
//
//
//             child: BlocBuilder<AnimalAssignedBloc,
//                 AnimalAssignedState>(
//
//
//               builder: (context,state){
//
//
//
//                 if(state is AnimalAssignedLoaded){
//
//
//                   final data = state.animal;
//
//
//
//                   return Column(
//
//
//                     children: [
//
//
//
//                       const SizedBox(height:10),
//
//
//
//                       Text(
//
//                         "Animal Assigned",
//
//                         style: AppTextStyles.title,
//
//                       ),
//
//
//
//
//                       const SizedBox(height:25),
//
//
//
//
//
//                       Text(
//
//                         "Alhamdulillah!",
//
//                         style: AppTextStyles.heading,
//
//                       ),
//
//
//
//
//                       const SizedBox(height:8),
//
//
//
//
//
//                       Text(
//
//                         "Your animal has been\nassigned.",
//
//                         textAlign: TextAlign.center,
//
//                         style: AppTextStyles.body,
//
//                       ),
//
//
//
//
//                       const SizedBox(height:20),
//
//
//
//
//
//
//                       ClipRRect(
//
//
//                         borderRadius:
//                         BorderRadius.circular(25),
//
//
//
//                         child: Image.asset(
//
//                           animal.image,
//
//                           height:160,
//
//                           width:double.infinity,
//
//                           fit:BoxFit.cover,
//
//                         ),
//
//
//                       ),
//
//
//
//
//
//                       const SizedBox(height:12),
//
//
//
//
//                       Text(
//
//                         "Animal ID",
//
//                         style: AppTextStyles.body,
//
//                       ),
//
//
//
//
//
//                       Text(
//
//                         data.animalId,
//
//                         style: AppTextStyles.label,
//
//                       ),
//
//
//
//
//
//                       const SizedBox(height:20),
//
//
//
//
//
//
//                       Row(
//
//
//                         mainAxisAlignment:
//                         MainAxisAlignment.spaceAround,
//
//
//                         children:[
//
//
//
//                           info(
//                               "Type",
//                               data.type
//                           ),
//
//
//
//                           info(
//                               "Age",
//                               data.age
//                           ),
//
//
//
//                           info(
//                               "Weight",
//                               data.weight
//                           ),
//
//
//
//                         ],
//
//
//                       ),
//
//
//
//
//
//
//                       const Spacer(),
//
//
//
//
//
//                       Text(
//
//                         data.message,
//
//                         textAlign:
//                         TextAlign.center,
//
//
//                         style:AppTextStyles.body,
//
//
//                       ),
//
//
//
//
//
//                       const SizedBox(height:20),
//
//
//
//
//
//
//                       SizedBox(
//
//
//                         width:double.infinity,
//
//
//                         height:48,
//
//
//
//                         child:ElevatedButton(
//
//
//
//                           style:
//                           ElevatedButton.styleFrom(
//
//
//
//                             backgroundColor:
//                             AppColors.green,
//
//
//
//                             shape:
//                             RoundedRectangleBorder(
//
//
//                               borderRadius:
//                               BorderRadius.circular(12),
//
//
//                             ),
//
//                           ),
//
//
//
//                           //
//                           // onPressed:(){
//                           //
//                           //
//                           //
//                           //   Navigator.pushNamed(
//                           //
//                           //     context,
//                           //
//                           //     RouteNames.qrBarCodePage,
//                           //
//                           //
//                           //     arguments: AnimalAssignedModel(
//                           //
//                           //       animalId:data.animalId,
//                           //
//                           //       image:data.image,
//                           //
//                           //       type:data.type,
//                           //
//                           //       age:data.age,
//                           //
//                           //       weight:data.weight,
//                           //
//                           //       barcode:
//                           //       "9876 5432 1098 7654",
//                           //
//                           //       orderId:
//                           //       "QB-2024-00012S8",
//                           //
//                           //       message:data.message,
//                           //
//                           //     ),
//                           //
//                           //   );
//                           //
//                           //
//                           // },
//
//                           onPressed:(){
//
//
//                             Navigator.pushNamed(
//
//                               context,
//
//                               RouteNames.qrBarCodePage,
//
//
//                               arguments: AnimalAssignedModel(
//
//                                 animalId: "GA-78945",
//
//                                 image: "assets/images/goat.jpg",
//
//                                 type: "Goat",
//
//                                 age: "1-2 Years",
//
//                                 weight: "25-28 Kg",
//
//                                 barcode: "9876 5432 1098 7654",
//
//                                 orderId: "QB-2024-0001258",
//
//                                 message:
//                                 "Your animal is healthy and ready for Qurbani.",
//
//                               ),
//
//                             );
//
//
//                           },
//
//
//
//
//                           child:Text(
//
//                             "View Barcode",
//
//                             style:
//                             AppTextStyles.button,
//
//
//                           ),
//
//
//                         ),
//
//                       )
//
//
//
//                     ],
//
//
//                   );
//
//
//                 }
//
//
//
//
//                 if(state is AnimalAssignedLoading){
//
//                   return const Center(
//                     child:CircularProgressIndicator(),
//                   );
//
//                 }
//
//
//
//
//                 return const SizedBox();
//
//
//               },
//
//             ),
//
//           ),
//
//
//         ),
//
//       ),
//
//
//     );
//
//   }
//
//
//
//
//
//   Widget info(String title,String value){
//
//
//
//     return Column(
//
//
//       children:[
//
//
//
//         Text(
//
//           title,
//
//           style:AppTextStyles.body,
//
//         ),
//
//
//
//
//         const SizedBox(height:4),
//
//
//
//
//         Text(
//
//           value,
//
//           style:AppTextStyles.label,
//
//         ),
//
//
//
//       ],
//
//
//     );
//
//   }
//
//
// }

//
// import 'package:flutter/material.dart';
//
// import '../../../../app/routes/routes_names.dart';
// import '../../../../core/Models/animal_assigned_model.dart';
// import '../../../../core/constants/theme/app_colors.dart';
// import '../../../../core/constants/theme/app_text_styles.dart';
//
//
// class AnimalAssignedPage extends StatelessWidget {
//
//   const AnimalAssignedPage({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     final args = ModalRoute.of(context)?.settings.arguments;
//
//
//     if(args == null || args is! AnimalAssignedModel){
//
//       return const Scaffold(
//
//         body: Center(
//
//           child: Text(
//             "No Animal Data Found",
//           ),
//
//         ),
//
//       );
//
//     }
//
//
//     final animal = args;
//
//
//
//     return Scaffold(
//
//
//       backgroundColor: AppColors.white,
//
//
//       body: SafeArea(
//
//
//         child: Padding(
//
//
//           padding: const EdgeInsets.all(16),
//
//
//
//           child: Column(
//
//
//             children: [
//
//
//
//               const SizedBox(height:10),
//
//               Text(
//
//                 "Animal Assigned",
//
//                 style: AppTextStyles.title,
//
//               ),
//
//               const SizedBox(height:25),
//
//
//
//
//               Text(
//
//                 "Alhamdulillah!",
//
//                 style: AppTextStyles.heading,
//
//               ),
//
//
//
//
//               const SizedBox(height:8),
//
//
//
//
//               Text(
//
//                 "Your animal has been\nassigned.",
//
//                 textAlign: TextAlign.center,
//
//                 style: AppTextStyles.body,
//
//               ),
//
//
//
//
//               const SizedBox(height:20),
//
//
//
//
//               ClipRRect(
//
//
//                 borderRadius: BorderRadius.circular(25),
//
//
//
//                 child: Image.asset(
//
//
//                   animal.image,
//
//
//                   height:160,
//
//
//                   width:double.infinity,
//
//
//                   fit:BoxFit.cover,
//
//
//                 ),
//
//
//               ),
//
//               const SizedBox(height:12),
//
//               Text(
//
//                 "Animal ID",
//
//                 style: AppTextStyles.body,
//
//               ),
//
//               Text(
//
//                 animal.animalId,
//
//                 style: AppTextStyles.label,
//
//               ),
//
//               const SizedBox(height:25),
//
//
//               Row(
//
//
//                 mainAxisAlignment:
//                 MainAxisAlignment.spaceAround,
//
//                 children:[
//
//                   info(
//                     "Type",
//                     animal.type,
//                   ),
//
//                   info(
//                     "Age",
//                     animal.age,
//                   ),
//
//                   info(
//                     "Weight",
//                     animal.weight,
//                   ),
//                 ],
//               ),
//
//               const Spacer(),
//
//               Text(
//
//                 animal.message,
//                 textAlign: TextAlign.center,
//                 style: AppTextStyles.body,
//               ),
//               const SizedBox(height:20),
//
//               SizedBox(
//
//                 width:double.infinity,
//
//                 height:48,
//
//                 child:ElevatedButton(
//
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColors.green,
//
//                     shape:
//                     RoundedRectangleBorder(
//
//
//                       borderRadius:
//                       BorderRadius.circular(12),
//
//
//                     ),
//
//
//                   ),
//
//                   onPressed:(){
//
//
//
//                     // Navigator.pushNamed(
//                     //
//                     //
//                     //   context,
//                     //
//                     //
//                     //   RouteNames.qrBarCodePage,
//                     //
//                     //
//                     //
//                     //   arguments: AnimalAssignedModel(
//                     //
//                     //
//                     //     animalId: animal.animalId,
//                     //
//                     //
//                     //     image: animal.image,
//                     //
//                     //
//                     //     type: animal.type,
//                     //
//                     //
//                     //     age: animal.age,
//                     //
//                     //
//                     //     weight: animal.weight,
//                     //
//                     //
//                     //     barcode:
//                     //     "9876 5432 1098 7654",
//                     //
//                     //
//                     //     orderId:
//                     //     animal.orderId,
//                     //
//                     //
//                     //     message:
//                     //     animal.message,
//                     //
//                     //
//                     //   ),
//                     //
//                     //
//                     // );
//
//                     // Navigator.pushNamed(
//                     //   context,
//                     //   RouteNames.qrBarCodePage,
//                     //
//                     //   arguments: AnimalAssignedModel(
//                     //     animalId: "GA-78945",
//                     //     image: "assets/images/goat.jpg",
//                     //     type: "Goat",
//                     //     age: "1-2 Years",
//                     //     weight: "25-28 Kg",
//                     //     barcode: "9876 5432 1098 7654",
//                     //     orderId: "QB-2024-0001258",
//                     //     message: "Your animal is healthy and ready for Qurbani.",
//                     //   ),
//                     // );
//
//                       Navigator.pushNamed(
//                         context,
//                         RouteNames.qrBarCodePage,
//
//                         arguments: animal,
//
//
//                       );
//
//                     },
//
//                   child:Text(
//
//                     "View Barcode",
//                     style:AppTextStyles.button,
//
//                   ),
//                 ),
//               )
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   Widget info(String title,String value){
//     return Column(
//       children:[
//         Text(
//           title,
//           style:AppTextStyles.body,
//         ),
//         const SizedBox(height:4),
//         Text(
//           value,
//           style:AppTextStyles.label,
//         ),
//       ],
//     );
//
//
//   }
//
// }

import 'package:flutter/material.dart';

import '../../../../app/routes/routes_names.dart';
import '../../../../core/Models/animal_assigned_model.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';

class AnimalAssignedPage extends StatelessWidget {

  const AnimalAssignedPage({super.key});

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)?.settings.arguments;


    if(args == null || args is! AnimalAssignedModel){

      return const Scaffold(

        body: Center(

          child: Text(
            "No Animal Data Found",
          ),

        ),

      );

    }


    final animal = args;



    return Scaffold(

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

      ),


      body: SafeArea(


        child: Padding(


          padding: const EdgeInsets.only(left: 16, right: 16),


          child: Column(


            children: [



              const SizedBox(height:10),



              Text(

                "Animal Assigned",

                style: AppTextStyles.title,

              ),




              const SizedBox(height:25),





              Text(

                "Alhamdulillah!",

                style: AppTextStyles.heading,

              ),




              const SizedBox(height:8),




              Text(

                "Your animal has been\nassigned.",

                textAlign: TextAlign.center,

                style: AppTextStyles.body,

              ),





              const SizedBox(height:20),




              ClipRRect(


                borderRadius:
                BorderRadius.circular(25),


                child: Image.asset(


                  animal.image,


                  height:200,


                  width:double.infinity,


                  fit:BoxFit.cover,


                ),


              ),





              const SizedBox(height:12),





              Text(

                "Animal ID",

                style: AppTextStyles.body,

              ),





              Text(

                animal.animalId,

                style: AppTextStyles.label,

              ),





              const SizedBox(height:25),





              Row(


                mainAxisAlignment:
                MainAxisAlignment.spaceAround,


                children:[



                  info(
                    "Type",
                    animal.type,
                  ),



                  info(
                    "Age",
                    animal.age,
                  ),



                  info(
                    "Weight",
                    animal.weight,
                  ),


                ],


              ),





              const SizedBox(height:30),

              Text(


                animal.message,


                textAlign: TextAlign.center,


                style: AppTextStyles.body,


              ),




              const Spacer(),


              SizedBox(
                width:double.infinity,


                height:45,

                child: ElevatedButton(

                  style:
                  ElevatedButton.styleFrom(


                    backgroundColor: AppColors.green,

                    shape:
                    RoundedRectangleBorder(

                      borderRadius:
                      BorderRadius.circular(12),

                    ),

                  ),


                  onPressed:(){

                    Navigator.pushNamed(

                      context,
                      RouteNames.qrBarCodePage,
                      arguments: animal,

                    );


                  },





                  child:Text(

                    "View Barcode",
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



  Widget info(String title,String value){

    return Column(


      children:[



        Text(

          title,

          style:AppTextStyles.body,

        ),



        const SizedBox(height:4),




        Text(

          value,

          style:AppTextStyles.label,

        ),


      ],


    );

  }


}

