import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quarbani_user_app/features/qurbani/presentation/pages/select_vendor_page.dart';

import '../../bloc/qurbani_bloc.dart';
import '../../bloc/qurbani_event.dart';
import '../../bloc/qurbani_state.dart';
import '../widgets/ai_recommendation_card.dart';
import '../widgets/time_slot_card.dart';

class SelectTimeSlotPage extends StatefulWidget {
  const SelectTimeSlotPage({super.key});

  @override
  State<SelectTimeSlotPage> createState() => _SelectTimeSlotPageState();
}

class _SelectTimeSlotPageState extends State<SelectTimeSlotPage> {
  final List<Map<String, String>> timeSlots = [
    {
      "time": "06:00 AM - 08:00 AM",
      "subtitle": "Best Time",
    },
    {
      "time": "08:00 AM - 10:00 AM",
      "subtitle": "High Demand",
    },
    {
      "time": "10:00 AM - 12:00 PM",
      "subtitle": "Good Time",
    },
    {
      "time": "12:00 PM - 02:00 PM",
      "subtitle": "Available",
    },
    {
      "time": "02:00 PM - 04:00 PM",
      "subtitle": "Limited Availability",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QurbaniBloc, QurbaniState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xffF7F8FA),

          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.black),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Select Time Slot",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "${state.selectedDate} 1446",
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "AI Recommended Slots",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 14),

                const AIRecommendationCard(
                  time: "06:00 AM - 08:00 AM",
                  subtitle:
                  "Based on availability & Sunnah time",
                ),

                const SizedBox(height: 18),

                const Text(
                  "Available Time Slots",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                Expanded(
                  child: ListView.builder(
                    itemCount: timeSlots.length,
                    itemBuilder: (context, index) {
                      final slot = timeSlots[index];

                      return TimeSlotCard(
                        time: slot["time"]!,
                        subtitle: slot["subtitle"]!,
                        isSelected:
                        state.selectedTimeSlotIndex == index,
                        onTap: () {
                          context.read<QurbaniBloc>().add(
                            SelectTimeSlotEvent(
                              selectedIndex: index,
                              selectedTime: slot["time"]!,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SelectVendorPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0B4A3A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}