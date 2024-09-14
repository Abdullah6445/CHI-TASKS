import 'package:flutter/material.dart';

class MobileImage extends StatelessWidget {
  const MobileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
        image: NetworkImage(
            "https://strapi.dhiwise.com/uploads/crafting_a_captivating_flutter_splash_screen_igniting_visual_appealog_image_6535f1634dc09_80e4a43a6c.webp"));
  }
}
