import 'package:cv/constants/assets_constants.dart';
import 'package:cv/constants/color_constants.dart';
import 'package:cv/constants/personal_information_constants.dart';
import 'package:cv/constants/style_constants.dart';
import 'package:cv/utils/text_theme_extension.dart';
import 'package:cv/view/pages/cv/components/personal_information_components/name_and_photo_background.dart';
import 'package:flutter/material.dart';

class NameAndPhotoWidget extends StatelessWidget {
  const NameAndPhotoWidget({
    super.key,
  });

  static const double _widgetHeight = 237;
  static const double _imageHeight = 143;
  static const double _imageWidth = 143;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: double.infinity,
      height: _widgetHeight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: NameAndPhotoBackground(),
            ),
          ),

          Positioned(
            top: 17,
            left: 0,
            right: 0,
            child: Padding(
              padding: StyleConstants.edgeInsetsT10,
              child: Text(
                PersonalInformationConstants.fullName,
                textAlign: TextAlign.center,
                style: textTheme.fullNameFont.copyWith(color: ColorConstants.white),
              ),
            ),
          ),

          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: _imageHeight,
                height: _imageWidth,
                padding: StyleConstants.edgeInsets5,
                decoration: const BoxDecoration(
                  color: ColorConstants.white,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.asset(
                    AssetsConstants.myCvPhoto,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
