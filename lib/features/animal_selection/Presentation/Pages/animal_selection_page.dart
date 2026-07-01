import 'package:flutter/material.dart';

import '../../../../core/Models/animal_model.dart';


import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';
import '../Widgets/animal_card.dart';
import '../Widgets/detail_info_card.dart';



class AnimalSelectionPage extends StatefulWidget {

  const AnimalSelectionPage({super.key});

  @override
  State<AnimalSelectionPage> createState() => _AnimalSelectionPageState();

}

class _AnimalSelectionPageState extends State<AnimalSelectionPage> {


  AnimalModel? selectedAnimal;


  final List<AnimalModel> animals = const [


    AnimalModel(
      name:"Goat",
      price:"From SAR 650",
      image:"assets/images/goat.jpg",
      age:"2 Years",
      weight:"25-35 Kg",
      type:"Local",
    ),

    AnimalModel(
      name:"Sheep",
      price:"From SAR 750",
      image:"assets/images/sheep.jpg",
      age:"2 Years",
      weight:"25-35 Kg",
      type:"Local",
    ),

    AnimalModel(
      name:"Camel Share (1/10)",
      price:"From SAR 750",
      image:"assets/images/camelshare_.jpg",
      age:"2 Years",
      weight:"25-35 Kg",
      type:"Local",
    ),



    AnimalModel(
      name:"Full Camel",
      price:"From SAR 7,500",
      image:"assets/images/FullCamel.jpg",
      age:"2 Years",
      weight:"25-35 Kg",
      type:"Local",

    ),


  ];


  //
  // @override
  // Widget build(BuildContext context) {
  //
  //
  //   return Scaffold(
  //
  //
  //     backgroundColor:Colors.white,
  //
  //
  //     appBar:AppBar(
  //
  //       backgroundColor:Colors.white,
  //
  //       elevation:0,
  //
  //
  //       title:const Text(
  //
  //         "Select Animal",
  //
  //         style:TextStyle(
  //
  //           color:Colors.black,
  //
  //           fontSize:18,
  //
  //           fontWeight:FontWeight.w700,
  //
  //         ),
  //
  //       ),
  //
  //
  //       centerTitle:true,
  //
  //
  //     ),
  //
  //
  //
  //     body:ListView.builder(
  //
  //       padding:const EdgeInsets.all(16),
  //
  //
  //       itemCount:animals.length,
  //
  //
  //       itemBuilder:(context,index){
  //
  //
  //         return AnimalCard(
  //
  //           animal:animals[index],
  //
  //         );
  //
  //
  //       },
  //
  //     ),
  //
  //
  //   );
  //
  //
  // }

// }

  // @override
  // Widget build(BuildContext context){
  //
  //   return Scaffold(
  //
  //     body: ListView.builder(
  //
  //       itemCount: animals.length,
  //
  //       itemBuilder:(context,index){
  //
  //         final animal = animals[index];
  //
  //
  //         return Column(
  //
  //           children:[
  //
  //
  //             InkWell(
  //
  //               onTap:(){
  //
  //                 setState((){
  //
  //                   selectedAnimal = animal;
  //
  //                 });
  //
  //               },
  //
  //
  //               child: AnimalCard(
  //
  //                 animal: animal,
  //
  //               ),
  //
  //             ),
  //
  //
  //
  //             if(selectedAnimal == animal)
  //
  //               AnimalDetailsSection(
  //
  //                 animal:selectedAnimal!,
  //
  //               ),
  //
  //
  //
  //           ],
  //
  //
  //         );
  //
  //
  //       },
  //
  //
  //     ),
  //
  //   );
  //
  //
  // }


  @override
  Widget build(BuildContext context){

    return Scaffold(

      backgroundColor: AppColors.white,


      appBar: AppBar(

        backgroundColor: AppColors.white,

        elevation: 0,


        title: const Text(

          "Select Animal",

            style: AppTextStyles.title,


        ),


        centerTitle: true,

      ),



      body: ListView.builder(

        padding: const EdgeInsets.all(16),

        itemCount: animals.length,


        itemBuilder:(context,index){


          final animal = animals[index];


          return Column(

            children:[


              InkWell(

                onTap:(){

                  setState((){

                    selectedAnimal == animal
                    ?  selectedAnimal=null
                        : selectedAnimal=animal;

                  });

                },


                child: AnimalCard(

                  animal: animal,

                  isSelected: selectedAnimal==animal,

                  onTap: (){

                    setState(() {

                      selectedAnimal==animal
                          ? selectedAnimal = null
                          : selectedAnimal = animal;
                    });
                  },

                ),

              ),



              if(selectedAnimal == animal)

                AnimalDetailsSection(

                  animal: selectedAnimal!,

                ),


            ],


          );


        },


      ),




    );




  }


}

class AnimalDetailsSection extends StatelessWidget {


  final AnimalModel animal;


  const AnimalDetailsSection({

    super.key,

    required this.animal,

  });


  @override
  Widget build(BuildContext context){


    return Padding(

      padding: const EdgeInsets.all(16),


      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,


        children:[


          ClipRRect(

            borderRadius: BorderRadius.circular(12),


            child: Image.asset(

              animal.image,

              height:220,

              width:double.infinity,

              fit:BoxFit.cover,

            ),

          ),


          const SizedBox(height:6),


          Text(

            animal.name,

            style: AppTextStyles.title,

          ),


          const SizedBox(height: 4),


          Text(

            animal.price,

            style: AppTextStyles.smallTitle,

          ),


          const SizedBox(height:12),


          // Row(
          //
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //
          //
          //   children:[
          //
          //
          //     Text(
          //
          //       "Age\n${animal.age}",
          //
          //       textAlign:TextAlign.center,
          //
          //     ),
          //
          //
          //     Text(
          //
          //       "Weight\n${animal.weight}",
          //
          //       textAlign:TextAlign.center,
          //
          //     ),
          //
          //
          //     Text(
          //
          //       "Type\n${animal.type}",
          //
          //       textAlign:TextAlign.center,
          //
          //     ),
          //
          //
          //   ],
          //
          //
          //
          // ),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [

              DetailInfoCard(

                icon: Icons.person_outline,

                title: "Age",

                value: animal.age,

              ),


              DetailInfoCard(

                icon: Icons.monitor_weight_outlined,

                title: "Weight",

                value: animal.weight,

              ),


              DetailInfoCard(

                icon: Icons.pets,

                title: "Type",

                value: animal.type,

              ),

            ],

          ),


          const SizedBox(height:15),


          const Text(

            "Includes",
            style: AppTextStyles.smallTitle,

          ),


          const SizedBox(height:8),


          buildPoint("Healthy & Certified Animal"),

          buildPoint("Islamic Shariah Compliance"),

          buildPoint("Hygienic Slaughter"),

          buildPoint("Fair Distribution"),


        ],

      ),

    );


  }
  Widget buildPoint(String text){

    return Padding(

      padding: const EdgeInsets.only(bottom: 8),

      child: Row(

        children: [

          const Icon(

            Icons.check_circle,

            color: AppColors.successGreen,

            size: 15,

          ),


          const SizedBox(width: 8),


          Text(

            text,

            style: AppTextStyles.body.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w600,
            ),

          ),

        ],

      ),

    );

  }

}

