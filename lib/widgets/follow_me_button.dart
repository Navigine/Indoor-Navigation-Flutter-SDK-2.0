import 'package:flutter/material.dart';
import 'widget_styles.dart';
import 'follow_me_button_config.dart';

/**
 * @file com/widgets/follow_me_button.dart
 * @brief @copybrief FollowMeButton
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_default_navigation_view
 *
 * @brief Floating “follow me” button for navigation view.
 * Toggles following mode and updates its appearance.
 *
 * @ref FollowMeButtonConfig "FollowMeButtonConfig" for styling.
 */
class FollowMeButton extends StatelessWidget {
  /// Whether follow-me mode is active.
  final bool isFollowing;
  /// Called when the button is tapped.
  final void Function() onPressed;
  /// Optional config for styles and icons.
  final FollowMeButtonConfig config;

  const FollowMeButton({
    Key? key,
    required this.isFollowing,
    required this.onPressed,
    this.config = FollowMeButtonConfig.defaultConfig,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final safePadding = MediaQuery.of(context).padding;
    final padding = config.padding ?? EdgeInsets.only(
      right: kStandardRightPadding + safePadding.right,
      bottom: kFollowMeBottomPadding + safePadding.bottom,
    );
    final width = config.buttonWidth ?? kStandardButtonWidth;
    final height = config.buttonHeight ?? kStandardButtonHeight;
    final bgColor = config.buttonBackgroundColor ?? kButtonBackgroundColor;
    final accentColor = config.accentColor ?? kBaseBlueColor;
    final textColor = config.textColor ?? kBaseBlackColor;

    Widget iconChild = config.followMeIcon ?? Image.asset(
      'packages/navigine_sdk/assets/navigine_follow_me.png',
      width: 32,
      height: 32,
      fit: BoxFit.contain,
    );
    if (isFollowing && config.followMeIconActive != null) {
      iconChild = config.followMeIconActive!;
    }

    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: padding,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: isFollowing ? kWhiteBackgroundColor : bgColor,
            borderRadius: kStandardBorderRadius,
            border: isFollowing
                ? Border.all(
                    color: kBorderColor,
                    width: kActiveBorderWidth,
                  )
                : null,
            boxShadow: kStandardShadows,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: kStandardBorderRadius,
              onTap: onPressed,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: (config.followMeIcon != null || config.followMeIconActive != null)
                    ? iconChild
                    : ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          isFollowing ? accentColor : textColor,
                          BlendMode.srcIn,
                        ),
                        child: iconChild,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
