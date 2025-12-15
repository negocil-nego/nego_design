class OnboardingModel {
  final String image;
  final String title;
  final String description;
  final Function()? onPressed;

  OnboardingModel({required this.image, required this.title, required this.description, this.onPressed});
}