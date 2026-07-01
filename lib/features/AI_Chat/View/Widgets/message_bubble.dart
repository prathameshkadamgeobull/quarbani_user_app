import 'package:flutter/material.dart';

import '../../../../app/routes/routes_names.dart';
import '../../../../core/Models/chat_message.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';

class MessageBubble extends StatelessWidget {

  final ChatMessage message;

  const MessageBubble({
    super.key,
    required this.message,
  });


  @override
  Widget build(BuildContext context) {

    final isAnimalSelectionMessage =
        message.message ==
            "Please choose the type of animal you want to offer.";


    return Padding(

      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),

      child: Row(

        crossAxisAlignment:
        CrossAxisAlignment.start,

        mainAxisAlignment:

        message.isUser
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,


        children: [


          Flexible(

            child: Column(

              crossAxisAlignment:

              message.isUser
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,


              children: [


                GestureDetector(


                  onTap: isAnimalSelectionMessage

                      ? (){


                    Navigator.pushNamed(

                      context,

                      RouteNames.animalSelection,

                    );


                  }

                      : null,



                  child: Container(


                    constraints: BoxConstraints(

                      maxWidth:
                      MediaQuery.of(context)
                          .size
                          .width * .75,

                    ),



                    padding:
                    const EdgeInsets.symmetric(

                      horizontal:16,

                      vertical:12,

                    ),



                    decoration: BoxDecoration(


                      color:

                      message.isUser

                          ? AppColors.green

                          : AppColors.white,



                      borderRadius:
                      BorderRadius.only(


                        topLeft:
                        const Radius.circular(16),


                        topRight:
                        const Radius.circular(16),


                        bottomLeft:

                        Radius.circular(

                          message.isUser
                              ? 16
                              : 5,

                        ),


                        bottomRight:

                        Radius.circular(

                          message.isUser
                              ? 5
                              : 16,

                        ),

                      ),



                      border:

                      message.isUser

                          ? null

                          : Border.all(

                        color:
                        AppColors.greyBorder,

                      ),



                    ),



                    // child: Text(
                    //
                    //   message.message,
                    //
                    //
                    //   style:
                    //   AppTextStyles.body.copyWith(
                    //
                    //     color:
                    //
                    //     message.isUser
                    //
                    //         ? AppColors.white
                    //
                    //         : AppColors.black,
                    //
                    //
                    //     height:1.5,
                    //
                    //   ),
                    //
                    // ),

                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [


                        Text(

                          message.message,

                          style: AppTextStyles.body.copyWith(

                            color: message.isUser
                                ? AppColors.white
                                : AppColors.black,

                            height: 1.5,

                          ),

                        ),



                        if(isAnimalSelectionMessage)

                          Padding(

                            padding: const EdgeInsets.only(top:12),

                            child: SizedBox(

                              width: double.infinity,

                              height:40,

                              child: ElevatedButton(

                                style: ElevatedButton.styleFrom(

                                  backgroundColor: AppColors.green,

                                  shape:
                                  RoundedRectangleBorder(

                                    borderRadius:
                                    BorderRadius.circular(10),

                                  ),

                                ),


                                onPressed: (){


                                  Navigator.pushNamed(

                                    context,

                                    RouteNames.animalSelection,

                                  );


                                },


                                child: const Text(

                                  "Choose Animal",

                                  style: TextStyle(

                                    color: Colors.white,

                                    fontWeight: FontWeight.w600,

                                  ),

                                ),

                              ),

                            ),

                          ),


                      ],

                    ),


                  ),

                ),



                const SizedBox(height:4),



                // Text(
                //
                //   "10:30 AM",
                //
                //   style:
                //   AppTextStyles.body.copyWith(
                //
                //     fontSize:12,
                //
                //     color:AppColors.grey,
                //
                //   ),

                // ),


              ],

            ),

          ),


        ],

      ),

    );

  }

}