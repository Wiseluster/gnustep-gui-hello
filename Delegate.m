#import "Delegate.h"
#import <AppKit/NSButton.h>

@implementation Delegate
- (void) applicationDidFinishLaunching: (NSNotification *) aNotification
{
    [window makeKeyAndOrderFront: self];
}

- (void) applicationWillFinishLaunching: (NSNotification *) aNotification
{
    NSButton *button = [[NSButton alloc] init];
    window = [[NSWindow alloc] init];

    button.title = @"Close";
    button.target = window;
    button.action = @selector(performClose:);

    window.title = @"GNUstep Hello";
    window.contentView = button;
    window.contentSize = NSMakeSize(300, 200);
    window.delegate = self;

    [button release];
}

- (void) windowWillClose: (NSNotification *) aNotification
{
    [NSApp stop: self];
}
@end
