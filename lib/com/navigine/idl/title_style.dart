import 'dart:ffi';
import 'dart:ui';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/title_anchor.dart';

part 'title_style.impl.dart';
/// Style parameters for a map object title.
/// Used with [MapObject] `setTitleWithStyle`.
class TitleStyle {
    /// Default constructor.
    TitleStyle({this.fontSize = 12, this.color = const Color(0xFF000000), this.outlineColor = const Color(0xFFFFFFFF), this.outlineWidth = 2, this.anchor = TitleAnchor.CENTER, this.visible = true});
    ///
    /// Example:
    /// ```dart
    /// TitleStyle titleStyle = TitleStyle(
    ///  fontSize: 14,
    ///  color: "#3366CC",
    ///  outlineColor: "#FFFFFF",
    ///  anchor: TitleAnchor.TOP,
    ///  visible: true,
    /// );
    /// ```
    /// Font size in pixels.
    double fontSize;
    /// Title fill color.
    Color color;
    /// Title outline (halo) color.
    Color outlineColor;
    /// Title outline (halo) width in pixels.
    double outlineWidth;
    /// Title anchor relative to the placement point [TitleAnchor].
    TitleAnchor anchor;
    /// Whether the title is visible.
    bool visible;
}
