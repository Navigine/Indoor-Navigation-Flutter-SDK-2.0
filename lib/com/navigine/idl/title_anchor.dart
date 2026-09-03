import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'title_anchor.impl.dart';
/// Anchor position of a map object title relative to its placement point.
/// Referenced from [TitleStyle], [MapObject].
enum TitleAnchor {
    /// Center of the text.
    CENTER,
    /// Top edge of the text.
    TOP,
    /// Bottom edge of the text.
    BOTTOM,
    /// Left edge of the text.
    LEFT,
    /// Right edge of the text.
    RIGHT,
    /// Top-left corner of the text.
    TOP_LEFT,
    /// Top-right corner of the text.
    TOP_RIGHT,
    /// Bottom-left corner of the text.
    BOTTOM_LEFT,
    /// Bottom-right corner of the text.
    BOTTOM_RIGHT,
}
