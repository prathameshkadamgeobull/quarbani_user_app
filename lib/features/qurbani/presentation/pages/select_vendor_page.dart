import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/qurbani_bloc.dart';
import '../../bloc/qurbani_event.dart';
import '../../bloc/qurbani_state.dart';
import '../widgets/vendor_card.dart';

class SelectVendorPage extends StatefulWidget {
  const SelectVendorPage({super.key});

  @override
  State<SelectVendorPage> createState() => _SelectVendorPageState();
}

class _SelectVendorPageState extends State<SelectVendorPage> {
  final TextEditingController searchController = TextEditingController();
  final List<Map<String, String>> vendors = [
    {
      "location": "Makkah - Aziziyah",
      "name": "Al Noor Slaughterhouse",
      "rating": "4.8",
      "distance": "2.4 km",
      "speciality": "Goat • Sheep • Camel",
    },
    {
      "location": "Makkah - Batha Quraish",
      "name": "Al Haramain Slaughterhouse",
      "rating": "4.7",
      "distance": "3.1 km",
      "speciality": "Goat • Sheep",
    },
    {
      "location": "Makkah - Sharafiyah",
      "name": "Barakah Slaughterhouse",
      "rating": "4.6",
      "distance": "3.8 km",
      "speciality": "Goat • Camel",
    },
    {
      "location": "Mina",
      "name": "Mina Slaughterhouse",
      "rating": "4.6",
      "distance": "7.2 km",
      "speciality": "Goat • Sheep • Camel",
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
            title: const Text(
              "Select Location / Vendor",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search city or area",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.my_location),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Expanded(
                  child: ListView.builder(
                    itemCount: vendors.length,
                    itemBuilder: (context, index) {
                      final vendor = vendors[index];

                      return VendorCard(
                        location: vendor["location"]!,
                        vendorName: vendor["name"]!,
                        speciality: vendor["speciality"]!,
                        rating: vendor["rating"]!,
                        distance: vendor["distance"]!,
                        isSelected:
                        state.selectedVendorIndex == index,
                        onTap: () {
                          context.read<QurbaniBloc>().add(
                            SelectVendorEvent(
                              selectedIndex: index,
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
                      // TODO: Navigate to next page
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
                        fontSize: 17,
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
      },
    );
  }
}