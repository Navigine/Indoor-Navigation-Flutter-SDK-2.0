import 'package:flutter/material.dart';
import 'widget_styles.dart';
import 'zoom_controls_config.dart';

/**
 * @file com/widgets/zoom_controls.dart
 * @brief @copybrief ZoomControls
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_default_navigation_view
 *
 * @brief Compact +/- zoom control stack for navigation view.
 * Forwards tap callbacks to the host.
 *
 * @ref ZoomControlsConfig "ZoomControlsConfig" for styling.
 */
class ZoomControls extends StatefulWidget {
  /// Called on zoom-in tap.
  final void Function() zoomInPressed;
  /// Called on zoom-out tap.
  final void Function() zoomOutPressed;
  /// Optional config for styles.
  final ZoomControlsConfig config;

  const ZoomControls({
    Key? key,
    required this.zoomInPressed,
    required this.zoomOutPressed,
    this.config = ZoomControlsConfig.defaultConfig,
  }) : super(key: key);

  @override
  State<ZoomControls> createState() => _ZoomControlsState();
}

class _ZoomControlsState extends State<ZoomControls> {
  @override
  void initState() {
    super.initState();
  }

  void _zoomIn() {
    widget.zoomInPressed();
  }

  void _zoomOut() {
    widget.zoomOutPressed();
  }

  @override
  Widget build(BuildContext context) {
    final config = widget.config;
    final width = config.buttonWidth ?? kStandardButtonWidth;
    final height = config.zoomControlsHeight ?? kZoomControlsHeight;
    final bgColor = config.buttonBackgroundColor ?? kButtonBackgroundColorOpaque;
    final textColor = config.textColor ?? kBaseBlackColor;
    final padding = config.padding ?? EdgeInsets.only(right: kStandardRightPadding + MediaQuery.of(context).padding.right);

    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: padding,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: kStandardBorderRadius,
            boxShadow: kStandardShadows,
          ),
          child: Column(
            children: [
              Expanded(
                child: Material(
                  color: bgColor,
                  borderRadius: kTopBorderRadius,
                  child: InkWell(
                    borderRadius: kTopBorderRadius,
                    onTap: _zoomIn,
                    child: Center(
                      child: config.zoomInIcon ?? Text(
                        '+',
                        style: TextStyle(fontSize: kButtonFontSize, color: textColor),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  color: bgColor,
                  borderRadius: kBottomBorderRadius,
                  child: InkWell(
                    borderRadius: kBottomBorderRadius,
                    onTap: _zoomOut,
                    child: Center(
                      child: config.zoomOutIcon ?? Text(
                        '−',
                        style: TextStyle(fontSize: kButtonFontSize, color: textColor),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
