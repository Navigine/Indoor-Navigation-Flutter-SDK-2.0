import 'package:flutter/material.dart';
import 'widget_styles.dart';
import 'floor_selector_view_config.dart';

/**
 * @file com/widgets/floor_selector_view.dart
 * @brief @copybrief FloorSelectorView
 */

/// Floor info model.
class LevelInfo {
  final String levelId;
  final int sublocationId;
  LevelInfo({required this.levelId, required this.sublocationId});
}

/// Callback invoked when a floor (sublocation) is selected.
typedef FloorSelectedCallback = void Function(int sublocationId, String levelId);

/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_default_navigation_view
 *
 * @brief Vertical floor selector for navigation view.
 * Shows available sublocations, scrolls when needed, hides for single-floor cases.
 *
 * @ref FloorSelectorViewConfig "FloorSelectorViewConfig" for styling.
 */
class FloorSelectorView extends StatefulWidget {
  final FloorSelectedCallback? onFloorSelected;
  final FloorSelectorViewConfig config;

  const FloorSelectorView({
    Key? key,
    this.onFloorSelected,
    this.config = FloorSelectorViewConfig.defaultConfig,
  }) : super(key: key);

  @override
  State<FloorSelectorView> createState() => FloorSelectorViewState();
}

class FloorSelectorViewState extends State<FloorSelectorView> {
  final ScrollController _scrollController = ScrollController();

  List<LevelInfo> _floors = [];
  int _selectedFloorIndex = -1;

  final ValueNotifier<bool> _showTopNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _showBottomNotifier = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateScrollButtonsVisibility);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateScrollButtonsVisibility);
    _scrollController.dispose();
    _showTopNotifier.dispose();
    _showBottomNotifier.dispose();
    super.dispose();
  }

  void _updateScrollButtonsVisibility() {
    if (!_scrollController.hasClients) {
      _showTopNotifier.value = false;
      _showBottomNotifier.value = false;
      return;
    }

    final bool tooManyFloors = _floors.length > kMaxVisibleFloors;
    final double offset = _scrollController.offset;
    final double maxScroll = _scrollController.position.maxScrollExtent;

    final bool showTop = tooManyFloors && offset > 1.0;
    final bool showBottom = tooManyFloors && (maxScroll - offset) > 1.0;

    if (_showTopNotifier.value != showTop) {
      _showTopNotifier.value = showTop;
    }
    if (_showBottomNotifier.value != showBottom) {
      _showBottomNotifier.value = showBottom;
    }
  }

  /// Replaces the floor list, resets selection and scroll position.
  void setFloors(List<LevelInfo> floors) {
    final newFloors = floors.isNotEmpty ? floors : <LevelInfo>[];
    setState(() {
      _floors = newFloors;
      if (_selectedFloorIndex < 0 || _selectedFloorIndex >= _floors.length) {
        _selectedFloorIndex = _floors.isNotEmpty ? 0 : -1;
      }
    });

    _updateScrollButtonsVisibility();

    if (_selectedFloorIndex >= 0 && _scrollController.hasClients) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final target = _selectedFloorIndex * kFloorRowHeight;
        final max = _scrollController.position.maxScrollExtent;
        _scrollController.jumpTo(target.clamp(0.0, max));
      });
    }
  }

  /// Updates selection by sublocation id and scrolls to it if needed.
  void setSublocationId(int newSublocationId) {
    final int newIndex = _floors.indexWhere((floor) => floor.sublocationId == newSublocationId);

    if (newIndex == -1) {
      return;
    }

    final bool wasAlreadySelected = _selectedFloorIndex == newIndex;

    if (!wasAlreadySelected) {
      setState(() {
        _selectedFloorIndex = newIndex;
      });
    } else {
      setState(() {});
    }

    _updateScrollButtonsVisibility();

    if (_scrollController.hasClients) {
      final bool needAnimation = _floors.length > kMaxVisibleFloors;

      final double targetOffset = newIndex * kFloorRowHeight;
      final double maxScroll = _scrollController.position.maxScrollExtent;
      final double clampedOffset = targetOffset.clamp(0.0, maxScroll);

      if (needAnimation) {
        _scrollController.animateTo(
          clampedOffset,
          duration: kScrollAnimationDuration,
          curve: kScrollAnimationCurve,
        );
      } else {
        _scrollController.jumpTo(clampedOffset);
      }
    }

    final selectedLevel = _floors[newIndex];
    widget.onFloorSelected?.call(selectedLevel.sublocationId, selectedLevel.levelId);
  }

  void _scrollUp() {
    final target = (_scrollController.offset - 4 * kFloorRowHeight)
        .clamp(0.0, _scrollController.position.maxScrollExtent);
    _scrollController.animateTo(
      target,
      duration: kScrollAnimationDuration,
      curve: kScrollAnimationCurve,
    );
  }

  void _scrollDown() {
    final target = (_scrollController.offset + 4 * kFloorRowHeight)
        .clamp(0.0, _scrollController.position.maxScrollExtent);
    _scrollController.animateTo(
      target,
      duration: kScrollAnimationDuration,
      curve: kScrollAnimationCurve,
    );
  }

  String _display(String id) => id.length <= 5 ? id : '${id.substring(0, 5)}...';

  double get _height {
    if (_floors.isEmpty || _floors.length <= 1) return 0.0;
    return _floors.length >= kMaxVisibleFloors
        ? kFloorSelectorMaxHeight - 1
        : _floors.length * kFloorRowHeight - 1;
  }

  @override
  Widget build(BuildContext context) {
    if (_height <= 0) return const SizedBox.shrink();

    final safePadding = MediaQuery.of(context).padding;
    final padding = widget.config.padding ?? EdgeInsets.only(
      left: kStandardLeftPadding + safePadding.left,
      top: kFloorSelectorTopPadding + safePadding.top,
    );

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: padding,
        child: Container(
          width: kStandardButtonWidth,
          height: _height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: kStandardBorderRadius,
            boxShadow: kStandardShadows,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: kStandardBorderRadius,
                child: ListView.builder(
                  controller: _scrollController,
                  physics: _floors.length > kMaxVisibleFloors
                      ? const AlwaysScrollableScrollPhysics()
                      : const NeverScrollableScrollPhysics(),
                  itemCount: _floors.length,
                  itemExtent: kFloorRowHeight,
                  itemBuilder: (context, i) {
                    final level = _floors[i];
                    final selected = i == _selectedFloorIndex;
                    final accentColor = widget.config.accentColor ?? kBaseBlueColor;
                    final textColor = widget.config.textColor ?? kBaseBlackColor;
                    return Material(
                      color: selected ? accentColor : Colors.white,
                      child: InkWell(
                        onTap: () {
                          if (i == _selectedFloorIndex) return;
                          setState(() => _selectedFloorIndex = i);
                          widget.onFloorSelected?.call(level.sublocationId, level.levelId);

                          final target = i * kFloorRowHeight;
                          final max = _scrollController.position.maxScrollExtent;
                          _scrollController.jumpTo(target.clamp(0.0, max));
                        },
                        child: Center(
                          child: Text(
                            _display(level.levelId),
                            style: TextStyle(
                              color: selected ? Colors.white : textColor,
                              fontSize: kFloorSelectorFontSize,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              ValueListenableBuilder<bool>(
                valueListenable: _showTopNotifier,
                builder: (_, showTop, __) {
                  return showTop
                      ? Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: _scrollButton('▲', _scrollUp, kVerticalTopBorderRadius),
                        )
                      : const SizedBox.shrink();
                },
              ),

              ValueListenableBuilder<bool>(
                valueListenable: _showBottomNotifier,
                builder: (_, showBottom, __) {
                  return showBottom
                      ? Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: _scrollButton('▼', _scrollDown, kVerticalBottomBorderRadius),
                        )
                      : const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _scrollButton(String icon, VoidCallback onTap, BorderRadius radius) {
    return Container(
      height: kFloorRowHeight,
      width: kStandardButtonWidth,
      decoration: BoxDecoration(
        color: kButtonBackgroundColor,
        borderRadius: radius,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: radius,
          onTap: onTap,
          child: Center(
            child: Text(
              icon,
              style: const TextStyle(
                color: kBaseBlackColor,
                fontSize: kScrollButtonFontSize,
                fontWeight: kScrollButtonFontWeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
