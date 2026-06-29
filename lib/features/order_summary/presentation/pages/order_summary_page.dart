import 'package:flutter/material.dart';
import '../../../../app/routes/routes_names.dart';
import '../widgets/summary_item.dart';


class OrderSummaryPage extends StatelessWidget {

  const OrderSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 15),
                // HEADER
                const Text(
            
                  "Order Summary",
            
                  style: TextStyle(
            
                    fontSize: 28,
            
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000),
            
            
                  ),
            
                ),

                const SizedBox(height: 3),
                const Text(
                  "Review your Qurbani details",
                  style: TextStyle(
            
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
            
                    color: Color(0xff111111),
            
            
                  ),
            
                ),
            
            
            
                const SizedBox(height: 18),

            
                // DETAILS CARD
            
            
                Container(
                  padding: const EdgeInsets.fromLTRB(18, 18, 18, 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(18),
            
                    border: Border.all(
            
                      color: Colors.grey.shade300,
            
                    ),
                  ),
            
            
            
                  child: Column(
            
                    children: [
                      summaryItem(
                        Icons.pets,
                        "Animal",
                        "Goat",
                      ),
            
                      summaryItem(
                        Icons.calendar_month,
                        "Date",
                        "10 Dhul-Hijjah 1446\n(Eid Day)",
                      ),
            
                      summaryItem(
                        Icons.access_time,
                        "Time Slot",
                        "06:00 AM - 08:00 AM",
                      ),
            
                      summaryItem(
                        Icons.person,
                        "Vendor",
                        "Al Noor Slaughterhouse\nAziziyah, Makkah",
                      ),
            
                      summaryItem(
                        Icons.shopping_cart,
                        "Quantity",
                        "1 Animal",
                      ),
            
                      summaryItem(
                        Icons.currency_rupee,
                        "Amount",
                        "",
                      ),
            
                    ],
            
                  ),
            
                ),
            
            
                const SizedBox(height: 18),
            
                // TOTAL PAYABLE
            
                Container(
            
                  padding:
                  const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 14,
                  ),
            
                  decoration: BoxDecoration(
            
                    borderRadius:
                    BorderRadius.circular(12),
            
            
                    border: Border.all(
            
                      color: Colors.grey.shade300,
            
                    ),
            
                  ),
            
            
                  child: Row(
            
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
            
                    children: const [
                      Text("Total Payable",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff000000),
                      ),
            
                      ),
            
            
                      Text(
            
                        "SAR 650",
            
                        style: TextStyle(
            
                          fontWeight: FontWeight.bold,
            
                          fontSize: 20,
            
                        ),
            
                      ),
            
                    ],
            
                  ),
            
                ),

                const SizedBox(height:40),
            
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Color(0xff006B3F),
                      backgroundColor: const Color(0xff004D2C),
            
                      shape:
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
            
                      ),
                    ),
                    onPressed: () {
            
                      Navigator.pushNamed(
                        context,
                        RouteNames.paymentMethod,
                      );
            
                    },
            
            
                    child: const Text(
            
                      "Proceed to Payment",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
            
                      ),
                    ),
            
                  ),
                ),
            
                const SizedBox(height: 15),
            
            
              ],
            
            ),
          ),

        ),

      ),

    );

  }

}