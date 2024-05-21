#import <UIKit/UIKit.h>
#import "NCFlutterLifecycleProvider.h"

@interface NCFlutterViewFactory: NSObject

+ (int64_t)getPlatformViewAddress:(UIView*)view;

+ (NCFlutterLifecycleProvider*)createLifecycleProvider;

+ (UIView*)createPlatformView:(CGRect)frame
            lifecycleProvider:(NCFlutterLifecycleProvider*)lifecycleProvider;

+ (void)startPlatformView:(UIView*)view
        lifecycleProvider:(NCFlutterLifecycleProvider*)lifecycleProvider;

@end
