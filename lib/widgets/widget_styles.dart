import 'package:flutter/material.dart';

/// Common styles and constants for navigation widgets.

// ============================================================================
// Colors
// ============================================================================

/// Base dark color (used for text and borders)
const Color kBaseBlackColor = Color.fromRGBO(21, 45, 71, 1);

/// Base blue color (used for highlighted elements)
const Color kBaseBlueColor = Color.fromRGBO(48, 170, 217, 1);

/// Button background color (semi-transparent light gray)
const Color kButtonBackgroundColor = Color.fromRGBO(250, 250, 250, 0.8);

/// Button background color (more opaque variant)
const Color kButtonBackgroundColorOpaque = Color.fromRGBO(250, 250, 250, 0.95);

/// White background color (for active state)
const Color kWhiteBackgroundColor = Color.fromRGBO(255, 255, 255, 0.95);

/// Border color (for active button state)
const Color kBorderColor = Color.fromRGBO(209, 209, 209, 1);

/// Shadow color
const Color kShadowColor = Color.fromRGBO(21, 45, 71, 0.2);

// ============================================================================
// Shadows
// ============================================================================

/// Standard shadow for widgets
const BoxShadow kStandardShadow = BoxShadow(
  color: kShadowColor,
  offset: Offset(0, 4),
  blurRadius: 6,
  spreadRadius: 0,
);

/// List of standard shadows (for use in BoxDecoration)
const List<BoxShadow> kStandardShadows = [kStandardShadow];

// ============================================================================
// Border Radius
// ============================================================================

/// Standard border radius
const double kBorderRadius = 4.0;

/// Standard corner radius
const BorderRadius kStandardBorderRadius = BorderRadius.all(Radius.circular(kBorderRadius));

/// Border radius for top corners only
const BorderRadius kTopBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(kBorderRadius),
  topRight: Radius.circular(kBorderRadius),
);

/// Border radius for bottom corners only
const BorderRadius kBottomBorderRadius = BorderRadius.only(
  bottomLeft: Radius.circular(kBorderRadius),
  bottomRight: Radius.circular(kBorderRadius),
);

/// Vertical border radius (top)
const BorderRadius kVerticalTopBorderRadius = BorderRadius.vertical(
  top: Radius.circular(kBorderRadius),
);

/// Vertical border radius (bottom)
const BorderRadius kVerticalBottomBorderRadius = BorderRadius.vertical(
  bottom: Radius.circular(kBorderRadius),
);

// ============================================================================
// Sizes
// ============================================================================

/// Standard button and widget width
const double kStandardButtonWidth = 48.0;

/// Standard button height
const double kStandardButtonHeight = 48.0;

/// Zoom controls height
const double kZoomControlsHeight = 96.0;

/// Floor selector row height
const double kFloorRowHeight = 42.0;

/// Maximum floor selector height
const double kFloorSelectorMaxHeight = 250.0;

/// Maximum number of visible floors
const int kMaxVisibleFloors = 6;

// ============================================================================
// Padding
// ============================================================================

/// Standard right padding
const double kStandardRightPadding = 4.0;

/// Standard left padding
const double kStandardLeftPadding = 16.0;

/// Top padding for floor selector
const double kFloorSelectorTopPadding = 145.0;

/// Bottom padding for Follow Me button
const double kFollowMeBottomPadding = 48.0;

// ============================================================================
// Typography
// ============================================================================

/// Font size for zoom buttons and Follow Me button
const double kButtonFontSize = 22.0;

/// Font size for scroll buttons
const double kScrollButtonFontSize = 20.0;

/// Font size for floor selector
const double kFloorSelectorFontSize = 17.0;

/// Font weight for buttons
const FontWeight kButtonFontWeight = FontWeight.w600;

/// Font weight for scroll buttons
const FontWeight kScrollButtonFontWeight = FontWeight.bold;

// ============================================================================
// Animations
// ============================================================================

/// Standard animation duration
const Duration kStandardAnimationDuration = Duration(milliseconds: 350);

/// Scroll animation duration
const Duration kScrollAnimationDuration = Duration(milliseconds: 300);

/// Animation curve for scrolling
const Curve kScrollAnimationCurve = Curves.easeOut;

// ============================================================================
// Borders
// ============================================================================

/// Border width for active state
const double kActiveBorderWidth = 1.5;

