import 'package:flutter/material.dart';
import 'widget_styles.dart';

/// Compact +/- zoom control stack for navigation view.
/// Forwards tap callbacks to the host.
class ZoomControls extends StatefulWidget {
  /// Called on zoom-in tap.
  final void Function() zoomInPressed;
  /// Called on zoom-out tap.
  final void Function() zoomOutPressed;

  const ZoomControls({
    Key? key,
    required this.zoomInPressed,
    required this.zoomOutPressed,
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
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          right: kStandardRightPadding + MediaQuery.of(context).padding.right,
        ),
        child: Container(
          width: kStandardButtonWidth,
          height: kZoomControlsHeight,
          decoration: BoxDecoration(
            borderRadius: kStandardBorderRadius,
            boxShadow: kStandardShadows,
          ),
          child: Column(
            children: [
              // Zoom In (+)
              Expanded(
                child: Material(
                  color: kButtonBackgroundColorOpaque,
                  borderRadius: kTopBorderRadius,
                  child: InkWell(
                    borderRadius: kTopBorderRadius,
                    onTap: _zoomIn,
                    child: const Center(
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: kButtonFontSize,
                          color: kBaseBlackColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Zoom Out (-)
              Expanded(
                child: Material(
                  color: kButtonBackgroundColorOpaque,
                  borderRadius: kBottomBorderRadius,
                  child: InkWell(
                    borderRadius: kBottomBorderRadius,
                    onTap: _zoomOut,
                    child: const Center(
                      child: Text(
                        '−',
                        style: TextStyle(
                          fontSize: kButtonFontSize,
                          color: kBaseBlackColor,
                        ),
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
