import 'package:flutter/material.dart';

import '../../../../app/routes/routes_names.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: Colors.white,

  body: SafeArea(
  child: SingleChildScrollView(
  child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
  child: Column(
  children: [

  const SizedBox(height: 12),

  const Text(
  "Perform Qurbani\nwith Confidence",
  textAlign: TextAlign.center,
  style: TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  ),
  ),

  const SizedBox(height: 12),

  const Text(
  "We make your Qurbani easy,\ntransparent and meaningful.",
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.black87,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  height: 1.5,
  ),
  ),

  const SizedBox(height: 25),

  Image.asset(
  "assets/images/onboarding.png",
  height: 180,
  fit: BoxFit.contain,
  ),

  const SizedBox(height: 15),

  buildFeature(Icons.verified_user, "Verified Vendors"),

  buildFeature(Icons.live_tv, "Live Video Option"),

  buildFeature(Icons.qr_code_scanner, "QR Verified Sacrifice"),

  buildFeature(Icons.volunteer_activism, "Fair Distribution"),

  const SizedBox(height: 12),

  SizedBox(
  width: double.infinity,
  height: 50,
  child: ElevatedButton(
  onPressed: () {
  Navigator.pushReplacementNamed(
  context,
  RouteNames.dashboard,
  );
  },
  style: ElevatedButton.styleFrom(
  backgroundColor: const Color(0xff0B4A3A),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(14),
  ),
  ),
  child: const Text(
  "Next",
  style: TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.bold,
  ),
  ),
  ),
  ),

  const SizedBox(height: 10),

  const SizedBox(height: 10),
  ],
  ),
  ),
  ),
  ),
  );
  }

  Widget buildFeature(IconData icon, String title) {
  return Container(
  margin: const EdgeInsets.only(bottom: 14),
  padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10),
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  border: Border.all(color: Colors.grey.shade300),
  ),
  child: Row(
  children: [

  CircleAvatar(
  radius: 18,
  backgroundColor: Colors.green.shade50,
  child: Icon(
  icon,
  color: const Color(0xff0B4A3A),
  ),
  ),

  const SizedBox(width: 15),

  Text(
  title,
  style: const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  ),
  ),
  ],
  ),
  );
  }

  Widget dot(bool active) {

    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      width: active ? 18 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: active
            ? const Color(0xff0B4A3A)
            : Colors.grey.shade400,
        borderRadius: BorderRadius.circular(20),
      )
    );

  return Container(
  margin: const EdgeInsets.only(bottom: 14),
  width: active ? 18 : 8,
  height: 8,
  decoration: BoxDecoration(
  color: active
  ? const Color(0xff0B4A3A)
      : Colors.grey.shade400,
  borderRadius: BorderRadius.circular(20),
  ),
  );

  }
}
//     return const Scaffold(
//       body: Center(
//         child: Text("Onboarding Page"),
//       ),
//     );
//   }
// }