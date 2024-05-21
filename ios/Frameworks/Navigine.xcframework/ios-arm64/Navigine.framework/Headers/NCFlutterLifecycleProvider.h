#import "NCLifecycleProvider.h"
#import "NCLifecycleListener.h"
#import <Foundation/Foundation.h>

@interface NCFlutterLifecycleProvider : NSObject <NCLifecycleProvider>

- (void)onBackground;
- (void)onActivate;
- (void)setListener:(__weak id<NCLifecycleListener>)listener;
- (void)reset;
- (bool)isActive;
- (void)initialize;

@end
