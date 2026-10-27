import 'package:flutter/material.dart';
import 'package:smart_expense_tracker/screens/login_screen.dart';
import 'package:smart_expense_tracker/screens/onboardScreen2.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
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
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
              const Spacer(),

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
                    const Icon(
                      Icons.shopping_cart,
                      size: 90,
                      color: Color(0xFF009B72),
                    ),
                    Positioned(
                      top: 35,
                      right: 45,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.currency_rupee_rounded,
                          size: 30,
                          color: Colors.orange.shade700,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 40,
                      child: Icon(
                        Icons.eco_rounded,
                        size: 55,
                        color: Colors.green.shade600,
                      ),
                    ),

                    Positioned(
                      bottom: 35,
                      right: 40,
                      child: Icon(
                        Icons.savings_rounded,
                        size: 50,
                        color: Colors.orange.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Title
              const Text(
                'Take Control\nof Your Money',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF142B49),
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 18),
              // Description
              const Text(
                'Track your daily expenses, set budgets '
                'and achieve your financial goals.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF64748B),
                  height: 1.7,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [_buildDot(true), _buildDot(false), _buildDot(false)],
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Back',
                      style: TextStyle(color: Color(0xFF64748B)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Next onboarding screen
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen2()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Text('Next'),
                        SizedBox(width: 10),
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
}

Widget _buildDot(bool isActive) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    height: 8,
    width: isActive ? 20 : 8,
    decoration: BoxDecoration(
      color: isActive
          ? Color.fromARGB(255, 6, 190, 28)
          : const Color(0xFFCBD5E1),
    ),
  );
}
