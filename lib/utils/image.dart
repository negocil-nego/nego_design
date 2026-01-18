
import 'package:flutter/cupertino.dart';

bool isImageNetwork(String image) {
  return image.startsWith('http');
}

DecorationImage decorationImage(String image) {
  return DecorationImage(
    image: isImageNetwork(image) ? NetworkImage(image) : AssetImage(image),
  );
}