import 'package:flutter/material.dart';
import 'widget_styles.dart';

/// Floating “follow me” button for navigation view.
/// Toggles following mode and updates its appearance.
class FollowMeButton extends StatelessWidget {
  /// Whether follow-me mode is active.
  final bool isFollowing;
  /// Called when the button is tapped.
  final void Function() onPressed;

  const FollowMeButton({
    Key? key,
    required this.isFollowing,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final safePadding = MediaQuery.of(context).padding;

    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(
          right: kStandardRightPadding + safePadding.right,
          bottom: kFollowMeBottomPadding + safePadding.bottom,
        ),
        child: Container(
          width: kStandardButtonWidth,
          height: kStandardButtonHeight,
          decoration: BoxDecoration(
            color: isFollowing
                ? kWhiteBackgroundColor
                : kButtonBackgroundColor,
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
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    isFollowing ? kBaseBlueColor : kBaseBlackColor,
                    BlendMode.srcIn,
                  ),
                  child: Image.asset(
                    'packages/navigine_sdk/assets/navigine_follow_me.png',
                    width: 32,
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
