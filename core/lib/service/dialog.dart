import 'package:flutter/material.dart';

abstract class DialogUtils {
  static Future showScrollBottomSheet(
      {required BuildContext context,
      required ScrollableWidgetBuilder builder,
      bool useRootNavigator = false,
      bool isDismissible = true,
      double maxChildSize = 0.9,
      double minChildSize = 0.3,
      initialChildSize = 0.5}) async {
    return showModalBottomSheet(
        context: context,
        useRootNavigator: false,
        isScrollControlled: true,
        isDismissible: isDismissible,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              if (isDismissible) {
                Navigator.of(context).pop();
              }
            },
            child: GestureDetector(
              child: DraggableScrollableSheet(
                  maxChildSize: maxChildSize,
                  minChildSize: minChildSize,
                  initialChildSize: initialChildSize,
                  builder: (context, controller) {
                    return Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            topLeft: Radius.circular(16),
                          )),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 8, bottom: 12),
                            height: 5,
                            width: 48,
                            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(99)),
                          ),
                          Expanded(child: builder(context, controller))
                        ],
                      ),
                    );
                  }),
              onTap: () {},
            ),
          );
        });
  }

  static Future<dynamic> showAnimated(
    BuildContext context, {
    bool barrierDismissible = true,
    required WidgetBuilder builder,
    Curve curve = Curves.linear,
    Duration? duration,
    Alignment alignment = Alignment.center,
    Axis? axis,
    Color? barrierColor,
  }) async {
    return showGeneralDialog(
      context: context,
      pageBuilder: (BuildContext buildContext, Animation<double> animation, Animation<double> secondaryAnimation) {
        final Widget pageChild = Builder(builder: builder);
        return Builder(builder: (BuildContext context) => pageChild);
      },
      barrierDismissible: barrierDismissible,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: barrierColor ?? Colors.black54,
      transitionDuration: duration ?? const Duration(milliseconds: 400),
      transitionBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
