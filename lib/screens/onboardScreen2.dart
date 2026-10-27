
import 'package:flutter/material.dart';
import 'package:smart_expense_tracker/screens/home_screen.dart';
import 'login_screen.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  static const Color primaryColor = Color(0xFF009B72);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FCFB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              // Skip Button
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),

              const Spacer(),

              // Illustration
              Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFE6F7F0),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Chart
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildBar(60),
                        _buildBar(100),
                        _buildBar(140),
                        _buildBar(175),
                      ],
                    ),

                    // Growth Icon
                    const Positioned(
                      top: 25,
                      right: 35,
                      child: Icon(
                        Icons.trending_up_rounded,
                        size: 65,
                        color: Color(0xFF009B72),
                      ),
                    ),

                    // Money Icon
                    Positioned(
                      bottom: 25,
                      right: 40,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.orange.shade400,
                        child: const Icon(
                          Icons.currency_rupee_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // Title
              const Text(
                'Smart Insights\nfor Better Decisions',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF142B49),
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 18),

              // Description
              const Text(
                'Get clear reports and insights about your '
                'spending habits. Make smarter financial decisions.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF64748B),
                  height: 1.7,
                ),
              ),

              const Spacer(),

              // Page Indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(false),
                  _buildDot(true),
                  _buildDot(false),
                ],
              ),

              const SizedBox(height: 35),

              // Bottom Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Back',
                      style: TextStyle(color: Color(0xFF64748B)),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Text('Get Started'),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_forward_rounded),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBar(double height) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: 28,
      height: height,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(8),
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: isActive ? 20 : 8,
      decoration: BoxDecoration(
        color: isActive ? primaryColor : const Color(0xFFCBD5E1),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

