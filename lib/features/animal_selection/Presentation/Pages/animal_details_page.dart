import 'package:flutter/material.dart';

import '../../../../core/Models/animal_model.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';
import '../Widgets/detail_info_card.dart';


class AnimalDetailsPage extends StatelessWidget {

  final AnimalModel animal;

  const AnimalDetailsPage({
    super.key,
    required this.animal,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.white,


      appBar: AppBar(

        backgroundColor: AppColors.white,

        elevation: 0,

        scrolledUnderElevation: 0,

        shadowColor: Colors.transparent,


        leading: IconButton(

          onPressed: () {
            Navigator.pop(context);
          },

          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.black,
            size: 18,
          ),
        ),
      ),


      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 5,

            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(12),

                  child: SizedBox(
                    height: 220,
                    width: double.infinity,

                    child: Image.asset(
                      animal.image,
                      fit: BoxFit.cover,
                      // alignment: Alignment.center,
                      alignment: const Alignment(0, -0.9),
                    ),
                  ),
                ),



                const SizedBox(height: 6),


                 Text(
                  animal.name,
                   style: AppTextStyles.title.copyWith(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     color: AppColors.black,
                   ),
                ),


                const SizedBox(height: 4),


                Text(
                  animal.price,
                  style: AppTextStyles.body.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),


                const SizedBox(height: 8),


                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,

                    borderRadius: BorderRadius.circular(12),

                    boxShadow: [

                      BoxShadow(

                        color: Colors.grey.withOpacity(0.2),

                        blurRadius: 8,

                        spreadRadius: 1,

                        offset: const Offset(0, 3),

                      ),

                    ],
                  ),


                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children:[


                        DetailInfoCard(

                          icon: Icons.person_outline,

                          title:"Age",

                          value: animal.age,

                        ),


                        DetailInfoCard(

                          icon: Icons.monitor_weight_outlined,

                          title:"Weight",

                          value: animal.weight,

                        ),


                        DetailInfoCard(

                          icon: Icons.pets,

                          title:"Type",

                          value: animal.type,

                        ),


                      ],

                    )
                ),



                const SizedBox(height: 20),



                const Text(
                  "Includes",

                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000),
                  ),
                ),



                const SizedBox(height: 10),



                buildPoint("Healthy & Certified Animal"),

                buildPoint("Islamic Shariah Compliance"),

                buildPoint("Hygienic Slaughter"),

                buildPoint("Fair Distribution"),



                const SizedBox(height: 30),



                SizedBox(

                  width: double.infinity,

                  height: 48,

                ),


                const SizedBox(height: 20),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(

        padding: const EdgeInsets.all(16),

        child: SizedBox(

          height: 48,

          width: double.infinity,


          child: ElevatedButton(

            style: ElevatedButton.styleFrom(


              backgroundColor: const Color(0xff07522F),

              shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(11),

              ),
            ),


            onPressed: () {},


            child: const Text(

              "Select This Animal",

              style: TextStyle(

                color: Colors.white,

                fontSize: 15,

              ),
            ),
          ),
        ),
      ),
    );




  }


  Widget buildPoint(String text){


    return Padding(
      padding:const EdgeInsets.only(bottom:8),
      child:Row(
        children:[
          const Icon(
            Icons.check_circle,
            color:Color(0xff0F6B43),

            size:15,

          ),


          const SizedBox(width:8),


          Text(text,
            style: const TextStyle(
              color: Color(0xff000000),
              fontSize:14,
              fontWeight:FontWeight.w700,
            ),),

        ],


      ),

    );


  }

}