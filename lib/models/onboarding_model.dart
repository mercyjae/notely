class OnboardingModel{
  final String image;
  final String title;
  final String subtitle;
  final int index;

  OnboardingModel({required this.image, required this.title, required this.subtitle,required this.index, });
}


List<OnboardingModel> onboardingList =[
  OnboardingModel(image: 'assets/images/onboarding.png',
      title: "World's Safest And\nLargest Digital Notebook.",
      subtitle: "Notely is the world's safest, largest and\nintelligent digital notebook. Join over\n10M+"
          "users already using Notely",index: 0),
  OnboardingModel(image: 'assets/images/onboarding.png',
      title: "World's Safest And\nLargest Digital Notebook.",
      subtitle: "Notely is the world's safest, largest and\nintelligent digital notebook. Join over\n10M+"
          "users already using Notely",index: 1),
  OnboardingModel(image: 'assets/images/onboarding.png',
      title: "World's Safest And\nLargest Digital Notebook.",
      subtitle: "Notely is the world's safest, largest and\nintelligent digital notebook. Join over\n10M+"
          "users already using Notely", index: 2)
];