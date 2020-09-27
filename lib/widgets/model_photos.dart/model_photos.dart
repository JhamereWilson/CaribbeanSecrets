import 'package:caribbean_secrets_ecommerce/widgets/model_photos.dart/model_photos_desktop.dart';
import 'package:caribbean_secrets_ecommerce/widgets/model_photos.dart/model_photos_mobile.dart';
import 'package:caribbean_secrets_ecommerce/widgets/model_photos.dart/model_photos_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ModelPhotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ModelPhotosMobile(),
      tablet: ModelPhotosTablet(),
      desktop: ModelPhotosDesktop(),
    );
  }
}
