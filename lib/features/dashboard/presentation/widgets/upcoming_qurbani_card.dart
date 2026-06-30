import 'package:flutter/material.dart';

class UpcomingQurbaniCard extends StatefulWidget {
  const UpcomingQurbaniCard({super.key});



  @override
  State<UpcomingQurbaniCard> createState() =>
      _UpcomingQurbaniCardState();
}

class _UpcomingQurbaniCardState
    extends State<UpcomingQurbaniCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        clipBehavior: Clip.none,
        children: [

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 12,
                  offset: const Offset(0, 5),
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                const Text(
                  "Upcoming Qurbani",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Eid al-Adha • 10 Dhul-Hijjah",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),

                const Spacer(),

                SizedBox(
                  width: 140,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      const Color(0xff0B4A3A),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "View Details",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 12),
              ],
            ),
          ),

          Positioned(
            right: -15,
            bottom: -35,
            child: Image.asset(
              "assets/images/goat.png",
              height: 185,
            ),
          ),
        ],
      ),
    );
  }
}