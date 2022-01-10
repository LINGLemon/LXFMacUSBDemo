//
//  AppDelegate.m
//  LXFMacUsbDemo
//
//  Created by 凌煊峰 on 2022/1/10.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    _mainWindowController = [[LXFMainWindowController alloc] initWithWindowNibName:NSStringFromClass([LXFMainWindowController class])];
    
    //让显示的位置居于屏幕的中心
    [[_mainWindowController window] center];
    //前置显示窗口
    [_mainWindowController.window orderFront:nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
