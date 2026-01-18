class AvatarTileModel {
  final String image;
  final String title;
  final String subtitle;
  final String bottomText;

  const AvatarTileModel({
    required this.image,
    required this.title,
    required this.subtitle,
    this.bottomText = ""
  });
}