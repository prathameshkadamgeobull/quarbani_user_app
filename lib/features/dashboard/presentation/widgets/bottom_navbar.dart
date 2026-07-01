import 'package:flutter/material.dart';

import '../../../../app/routes/routes_names.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 70,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 18,
                    offset: Offset(0, -3),
                  ),
                ],
              ),
              child: Row(
                children: [

                  Expanded(
                    child: navItem(
                      icon: Icons.home_rounded,
                      title: "Home",
                      index: 0,
                    ),
                  ),

                  Expanded(
                    child: navItem(
                      icon: Icons.shopping_bag_outlined,
                      title: "Orders",
                      index: 1,
                    ),
                  ),

                  const SizedBox(width: 80),

                  Expanded(
                    child: navItem(
                      icon: Icons.favorite_border,
                      title: "Duas",
                      index: 2,
                    ),
                  ),

                  Expanded(
                    child: navItem(
                      icon: Icons.person_outline,
                      title: "Profile",
                      index: 3,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: -5,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteNames.aiChat,
                );

              },
              child: Container(
                width: 66,
                height: 66,
                decoration: BoxDecoration(
                  color: const Color(0xff0B4A3A),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    "AI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navItem({
    required IconData icon,
    required String title,
    required int index,
  }) {
    final selected = currentIndex == index;

    return InkWell(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: SizedBox(
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              icon,
              size: 24,
              color: selected
                  ? const Color(0xff0B4A3A)
                  : Colors.black87,
            ),

            const SizedBox(height: 4),

            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight:
                selected ? FontWeight.w600 : FontWeight.w500,
                color: selected
                    ? const Color(0xff0B4A3A)
                    : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}