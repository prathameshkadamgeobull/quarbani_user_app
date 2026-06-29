import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/qurbani_bloc.dart';
import '../../bloc/qurbani_event.dart';
import '../widgets/recommended_date_card.dart';
import 'select_time_slot_page.dart';

class SelectDatePage extends StatefulWidget {
  const SelectDatePage({super.key});

  @override
  State<SelectDatePage> createState() => _SelectDatePageState();
}

class _SelectDatePageState extends State<SelectDatePage> {
  final List<Map<String, dynamic>> dates = [
    {
      "date": "10 Dhul-Hijjah",
      "subtitle": "Eid Day",
      "recommended": true,
    },
    {
      "date": "09 Dhul-Hijjah",
      "subtitle": "One day before Eid",
      "recommended": false,
    },
    {
      "date": "11 Dhul-Hijjah",
      "subtitle": "One day after Eid",
      "recommended": false,
    },
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Select Date",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Recommended Dates",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff0B4A3A),
              ),
            ),

            const SizedBox(height: 18),

            Expanded(
              child: ListView.builder(
                itemCount: dates.length,
                itemBuilder: (context, index) {
                  final item = dates[index];

                  return RecommendedDateCard(
                    date: item["date"] as String,
                    subtitle: item["subtitle"] as String,
                    isRecommended: item["recommended"] as bool,
                    isSelected: selectedIndex == index,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });

                      context.read<QurbaniBloc>().add(
                        SelectDateEvent(
                          selectedIndex: index,
                          selectedDate: item["date"] as String,
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
                      builder: (_) => const SelectTimeSlotPage(),
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
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}