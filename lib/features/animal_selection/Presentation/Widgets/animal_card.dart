import 'package:flutter/material.dart';

import '../../../../app/routes/routes_names.dart';
import '../../../../core/Models/animal_model.dart';
import '../Pages/animal_details_page.dart';


class AnimalCard extends StatelessWidget {

  final AnimalModel animal;
  final bool isSelected;
  final VoidCallback onTap;
  const AnimalCard({
    super.key,

    required this.animal,
    required this.isSelected,
    required this.onTap,
  });


  @override
  Widget build(BuildContext context) {

    return InkWell(

        borderRadius: BorderRadius.circular(15),

        onTap: onTap ,
      // {

          // Navigator.push(
          //
          //   context,
          //
          //   MaterialPageRoute(
          //
          //     builder: (context)=> AnimalDetailsPage(
          //
          //       animal: animal,
          //
          //     ),
          //
          //   ),
        //   Navigator.pushNamed(
        //
        //     context,
        //
        //     RouteNames.animalDetails,
        //
        //     arguments: animal,
        //
        //   );
        //
        // },



    child:Container(

    // return Container(


      height:72,


      margin: const EdgeInsets.only(
        bottom:10,
      ),



      decoration: BoxDecoration(

        borderRadius:
        BorderRadius.circular(12),

        border: Border.all(

          color:Colors.grey.shade300,

        ),

      ),


      child: Row(

        children:[


          const SizedBox(width:8),


          ClipRRect(

            borderRadius:
            BorderRadius.circular(10),


            child: Image.asset(

              animal.image,

              height:58,

              width:58,

              fit:BoxFit.cover,

            ),

          ),


          const SizedBox(width:12),


          Expanded(

            child:Column(

              mainAxisAlignment:
              MainAxisAlignment.center,

              crossAxisAlignment:
              CrossAxisAlignment.start,

              children:[

                Text(

                  animal.name,

                  style:const TextStyle(

                    fontSize:15,

                    fontWeight:FontWeight.w600,

                  ),

                ),

                Text(

                  animal.price,

                  style:TextStyle(

                    fontSize:15,

                    color:Colors.grey.shade600,

                  ),

                ),

              ],

            ),

          ),

          Icon(

            isSelected
                ? Icons.keyboard_arrow_up
                : Icons.keyboard_arrow_down,

            size:40,

          ),


          const SizedBox(width:12),


        ],

      ),
     ),

    );

  }

}