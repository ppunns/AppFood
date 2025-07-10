import 'package:flutter/material.dart';


class OnboardingItem{
  final String title;
  final String description;
  final String image;

  OnboardingItem({required this.title, required this.description, required this.image});
}



class OnboardingSlider extends StatefulWidget {
  const OnboardingSlider({super.key});
  @override
  State<OnboardingSlider> createState() => _OnboardingSliderState();
}

class _OnboardingSliderState extends State<OnboardingSlider> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      title: 'All your favorite',
      description: 'Get all your loved foods in one once place, you just place the orer we do the rest',
      image: 'asset/img/onboarding1.png',
    ),
    OnboardingItem(
      title: 'Order from choosen chef',
      description: 'Get all your loved foods in one once place,you just place the orer we do the rest',
      image: 'asset/img/onboarding2.png',
    ),
    OnboardingItem(
      title: 'Free delivery offers',
      description: 'Get all your loved foods in one once place,you just place the orer we do the rest',
      image: 'asset/img/onboarding3.png',
    ),
  ];

  void _nextPage() {
    if (_currentIndex < onboardingItems.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      // Pindah ke login
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _currentIndex = index),
            itemCount: onboardingItems.length,
            itemBuilder: (context, index) {
              final item = onboardingItems[index];
              return Padding(
                key: ValueKey('page_$index'),
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Image.asset(item.image, height: 300),
                    const SizedBox(height: 32),
                    Text(item.title, style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: 16),
                    Text(item.description, textAlign: TextAlign.center),
                  ],
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            onboardingItems.length,
            (index) => Container(
              key: ValueKey(index),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.orange : Colors.grey,
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 62,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: _nextPage,
                  child: Text(
                    _currentIndex == onboardingItems.length - 1 ? 'Start' : 'Next',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 62,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent, // Hilangkan shadow
                    foregroundColor: Colors.orange, // Warna teks
                    surfaceTintColor: Colors.transparent, // Untuk Material 3
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: const Text('Skip'),
              ),
              ),
            ),
          ],
        ), // Jarak bawah agar tidak terlalu nempel
        const SizedBox(height: 24),
      ],
    );
  }
}